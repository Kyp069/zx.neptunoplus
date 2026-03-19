derive_pll_clocks
derive_clock_uncertainty

create_clock -name spiCk   -period 41.666 [get_ports spiCk]
create_clock -name clock50 -period 20.000 [get_ports clock50]

set_clock_groups -asynchronous -group [get_clocks spiCk]
set_clock_groups -asynchronous -group [get_clocks clock50]
set_clock_groups -asynchronous -group [get_clocks pll0|altpll_component|auto_generated|pll1|clk[0]]
set_clock_groups -asynchronous -group [get_clocks pll1|altpll_component|auto_generated|pll1|clk[0]]

set_false_path -to   rgb*
set_false_path -to   sync*
set_false_path -from tape
set_false_path -to   i2s*
set_false_path -to   joy*
set_false_path -from joy*
set_false_path -to   mbjoy*
set_false_path -from mbjoy*
set_false_path -from spiSs1
set_false_path -from spiSs2
set_false_path -from spiSs3
set_false_path -from spiMosi
set_false_path -to   spiMiso
# set_false_path -to   dram*
# set_false_path -from dram*
set_false_path -to   led*
