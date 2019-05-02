
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;
use work.kirsch_synth_pkg.all;

entity kirsch is
  port(
    clk        : in  std_logic;
    reset      : in  std_logic;
    i_valid    : in  std_logic;
    i_pixel    : in  unsigned(7 downto 0);
    o_valid    : out std_logic;
    o_edge     : out std_logic;
    o_dir      : out direction_ty;
    o_mode     : out mode_ty;
    o_row      : out unsigned(7 downto 0);
    o_col      : out unsigned(7 downto 0)
  );
end entity;

architecture main of kirsch is
signal mem_0_q                        :  std_logic_vector(7 downto 0);
signal mem_1_q                        :  std_logic_vector(7 downto 0);
signal mem_2_q                        :  std_logic_vector(7 downto 0);
signal row                            :  unsigned(7 downto 0) := to_unsigned(0, 8);
signal col                            :  unsigned(7 downto 0) := to_unsigned(0, 8);
signal state                          :  std_logic_vector(2 downto 0);
signal stage_ctr, stage_latest_ctr    :  std_logic_vector(6 downto 0);
signal a, b, c, d, e, f, g, h, i      :  unsigned(7 downto 0);
signal tmp1_1, tmp2_1                 :  unsigned(8 downto 0);
signal tmp2_out                       :  unsigned(8 downto 0);
signal tmp1_2                         :  unsigned(7 downto 0);
signal tmp2_2, tmp3_2                 :  unsigned(9 downto 0);
signal tmp3_1, tmp3_feedback          :  unsigned(12 downto 0);
signal tmp3_out, tmp3_out2            :  unsigned(12 downto 0);
signal dir1, dir2, dir3               :  direction_ty;

begin
  mem0 : entity work.mem(main)
  port map (
    address  =>   col,
    clock    =>   clk,
    data     =>   std_logic_vector(i_pixel),
    wren     =>   state(0) and i_valid,
    q        =>   mem_0_q
  );

  mem1 : entity work.mem(main)
  port map (
    address  =>   col,
    clock    =>   clk,
    data     =>   std_logic_vector(i_pixel),
    wren     =>   state(1) and i_valid,
    q        =>   mem_1_q
  );

  mem2 : entity work.mem(main)
  port map (
    address  =>   col,
    clock    =>   clk,
    data     =>   std_logic_vector(i_pixel),
    wren     =>   state(2) and i_valid,
    q        =>   mem_2_q
  );

  tmp2_out <= tmp1_1;
  tmp3_feedback <= tmp3_1;
  stage_latest_ctr <= stage_ctr;

  control : process (clk)
  begin
    if (reset = '1') then
      o_mode <= "01";
      row <= to_unsigned(0, 8);
      col <= to_unsigned(0, 8);
      state <= "001";
    elsif (rising_edge(clk)) then
      if (i_valid = '1') then
        o_mode <= "11";
        if (row >= 2) then
          a <= b;
          b <= c;
          h <= i;
          i <= d;
          g <= f;
          f <= e;
          e <= i_pixel;

          case state is
            when "001" =>
              c <= unsigned(mem_1_q);
              d <= unsigned(mem_2_q);
            when "010" =>
              c <= unsigned(mem_2_q);
              d <= unsigned(mem_0_q);
            when others =>
              c <= unsigned(mem_0_q);
              d <= unsigned(mem_1_q);
          end case;
        end if;

        o_row <= row;
        o_col <= col;

        if (col = 255) then
          row <= row + 1;
          state <= state rol 1;
        end if;

        col <= col + 1;
      else
        if ((col = 0 and row = 0 and stage_latest_ctr = "0000000") or (col = 255 and row = 255 and stage_ctr = "0000000")) then
          o_mode <= "10";
        end if;
      end if;
    end if;
  end process;

  stage_counter : process (clk)
  begin
    if (reset = '1') then
      stage_ctr <= (others => '0');
    elsif (rising_edge(clk)) then
      stage_ctr(6 downto 1) <= stage_ctr(5 downto 0);
      if (row >=2 and col >= 2 and i_valid = '1') then
        stage_ctr(0) <= '1';
      else
        stage_ctr(0) <= '0';
      end if;
    end if;
  end process;

  stage1 : process
  begin
    wait until rising_edge(clk);
    if (stage_ctr(0) = '1') then
      tmp1_1 <= resize(a, 9) + resize(h, 9);
      if (b > g) then
        tmp1_2 <= b;
        dir1 <= dir_nw;
      else
        tmp1_2 <= g;
        dir1 <= dir_w;
      end if;
    elsif (stage_ctr(1) = '1') then
      tmp1_1 <= resize(b, 9) + resize(c, 9);
      if (d > a) then
        tmp1_2 <= d;
        dir1 <= dir_ne;
      else
        tmp1_2 <= a;
        dir1 <= dir_n;
      end if;
    elsif (stage_ctr(2) = '1') then
      tmp1_1 <= resize(d, 9) + resize(e, 9);
      if (f > c) then
        tmp1_2 <= f;
        dir1 <= dir_se;
      else
        tmp1_2 <= c;
        dir1 <= dir_e;
      end if;
    elsif (stage_ctr(3) = '1') then
      tmp1_1 <= resize(f, 9) + resize(g, 9);
      if (h > e) then
        tmp1_2 <= h;
        dir1 <= dir_sw;
      else
        tmp1_2 <= e;
        dir1 <= dir_s;
      end if;
    end if;
  end process;

  stage2 : process
  begin
    wait until rising_edge(clk);
    if (stage_ctr(1) = '1') then
      tmp2_1 <= tmp1_1;
      dir2 <= dir1;
      tmp2_2 <= resize(tmp1_1, 10) + resize(tmp1_2, 10);
    elsif (stage_ctr(2) = '1' or stage_ctr(3) = '1' or stage_ctr(4) = '1') then
      dir2 <= dir1;
      tmp2_2 <= resize(tmp1_1, 10) + resize(tmp1_2, 10);
    end if;
  end process;

  stage3 : process
  begin
    wait until rising_edge(clk);
    if (stage_ctr(2) = '1') then
      tmp3_1 <= resize(tmp2_1, 13) + resize(tmp2_out, 13);
      tmp3_2 <= tmp2_2;
      dir3 <= dir2;
    elsif (stage_ctr(3) = '1') then
      tmp3_1 <= tmp3_feedback + resize(tmp2_out, 13);

      if (tmp2_2 > tmp3_2) then
        tmp3_2 <= tmp2_2;
        dir3 <= dir2;
      else
        tmp3_2 <= tmp3_2;
        dir3 <= dir3;
      end if;
    elsif (stage_ctr(4) = '1') then
      tmp3_1 <= tmp3_feedback + resize(tmp2_out, 13);

      if (tmp2_2 > tmp3_2) then
        tmp3_2 <= tmp2_2;
        dir3 <= dir2;
      else
        tmp3_2 <= tmp3_2;
        dir3 <= dir3;
      end if;
    elsif (stage_ctr(5) = '1') then
      tmp3_out <= (tmp3_1 sll 1) + tmp3_1;

      if (tmp2_2 > tmp3_2) then
        tmp3_out2 <= resize(tmp2_2, 13);
        dir3 <= dir2;
      else
        tmp3_out2 <= resize(tmp3_2, 13);
        dir3 <= dir3;
      end if;
    end if;
  end process;

  output : process
  begin
    wait until rising_edge(clk);
    if (stage_ctr(6) = '1') then
      if (((tmp3_out2 sll 3) - tmp3_out) > threshold) then
        o_edge <= '1';
        o_dir <= dir3;
        o_valid <= '1';
      else
        o_edge <= '0';
        o_dir <= dir_e;
        o_valid <= '1';
      end if;
    else
      o_valid <= '0';
    end if;
  end process;

end architecture;
