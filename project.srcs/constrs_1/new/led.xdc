




set_property IOSTANDARD LVCMOS33 [get_ports clr]
set_property PACKAGE_PIN M17 [get_ports clr]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports PWM]
set_property PACKAGE_PIN G17 [get_ports PWM]


set_property IOSTANDARD LVCMOS33 [get_ports button]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports led1]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN N17 [get_ports button]
set_property PACKAGE_PIN E3 [get_ports clock]
set_property PACKAGE_PIN H17 [get_ports led1]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets CPU/dx_latch1/reg_ir/dffe_loop[2].dff/data_writeReg[29]_INST_0_i_5_n_0]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {CPU/dx_latch1/reg_ir/dffe_loop[2].dff/data_writeReg[31]_INST_0_i_6_n_0}]

set_property IOSTANDARD LVCMOS33 [get_ports signal]
set_property PACKAGE_PIN G17 [get_ports signal]

set_property IOSTANDARD LVCMOS33 [get_ports buttonleft]
set_property IOSTANDARD LVCMOS33 [get_ports buttonright]
set_property IOSTANDARD LVCMOS33 [get_ports ledl]
set_property IOSTANDARD LVCMOS33 [get_ports ledr]
set_property PACKAGE_PIN P17 [get_ports buttonleft]
set_property PACKAGE_PIN M17 [get_ports buttonright]
set_property PACKAGE_PIN K15 [get_ports ledl]
set_property PACKAGE_PIN H17 [get_ports ledr]

set_property IOSTANDARD LVCMOS33 [get_ports signalcont]
set_property PACKAGE_PIN H14 [get_ports signalcont]

set_property PACKAGE_PIN G3 [get_ports off]
set_property PACKAGE_PIN P18 [get_ports reset]
set_property PACKAGE_PIN M17 [get_ports dance2]
set_property PACKAGE_PIN P17 [get_ports dance1]
set_property IOSTANDARD LVCMOS33 [get_ports dance1]
set_property IOSTANDARD LVCMOS33 [get_ports dance2]
set_property IOSTANDARD LVCMOS33 [get_ports off]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk1MHz]
