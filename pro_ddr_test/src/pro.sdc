create_clock -name clk100 -period 10 -waveform {0 5} [get_nets {clk100M}]
create_clock -name clk_x1 -period 10 -waveform {0 5} [get_pins {u_ddr3/gw3_top/u_ddr_phy_top/fclkdiv/CLKOUT}]
create_clock -name mem400 -period 2.5 -waveform {0 1.25} [get_nets {memory_clk}]
set_clock_groups -asynchronous -group [get_clocks {clk100}] 
                                               -group [get_clocks {clk_x1}] 
                                               -group [get_clocks {mem400}] 

set_false_path -from [get_pins {uFIFO_TX/array_reg_array_reg_0_0_s/DO*}]