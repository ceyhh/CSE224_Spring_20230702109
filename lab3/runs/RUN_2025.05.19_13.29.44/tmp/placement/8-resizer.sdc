###############################################################################
# Created by write_sdc
# Mon May 19 13:29:52 2025
###############################################################################
current_design counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 10.0000 [get_ports {clk}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
