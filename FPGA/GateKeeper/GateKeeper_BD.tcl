
################################################################
# This is a generated script based on design: GateKeeper_BD
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2023.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   if { [string compare $scripts_vivado_version $current_vivado_version] > 0 } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2042 -severity "ERROR" " This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Sourcing the script failed since it was created with a future version of Vivado."}

   } else {
     catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   }

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source GateKeeper_BD_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# control_parametros, GateKeeper, GateKeeper, GateKeeper, tick_generator, UART_Rx

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART avnet.com:zedboard:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name GateKeeper_BD

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./BD

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2030 -severity "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_gid_msg -ssname BD::TCL -id 2031 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_gid_msg -ssname BD::TCL -id 2032 -severity "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2033 -severity "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2034 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2035 -severity "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_gid_msg -ssname BD::TCL -id 2036 -severity "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2037 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_gid_msg -ssname BD::TCL -id 2038 -severity "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:clk_wiz:6.0\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
control_parametros\
GateKeeper\
GateKeeper\
GateKeeper\
tick_generator\
UART_Rx\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set GCLK [ create_bd_port -dir I -type clk -freq_hz 100000000 GCLK ]
  set JA10 [ create_bd_port -dir I -type data JA10 ]
  set det_in_1 [ create_bd_port -dir I -type data det_in_1 ]
  set det_in_2 [ create_bd_port -dir I -type data det_in_2 ]
  set det_in_0 [ create_bd_port -dir I -type data det_in_0 ]
  set det_out_0 [ create_bd_port -dir O -type data det_out_0 ]
  set det_out_1 [ create_bd_port -dir O -type data det_out_1 ]
  set det_out_2 [ create_bd_port -dir O -type data det_out_2 ]

  # Create instance: control_parametros_0, and set properties
  set block_name control_parametros
  set block_cell_name control_parametros_0
  if { [catch {set control_parametros_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $control_parametros_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: GateKeeper_0, and set properties
  set block_name GateKeeper
  set block_cell_name GateKeeper_0
  if { [catch {set GateKeeper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GateKeeper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: GateKeeper_1, and set properties
  set block_name GateKeeper
  set block_cell_name GateKeeper_1
  if { [catch {set GateKeeper_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GateKeeper_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: GateKeeper_2, and set properties
  set block_name GateKeeper
  set block_cell_name GateKeeper_2
  if { [catch {set GateKeeper_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GateKeeper_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tick_generator_0, and set properties
  set block_name tick_generator
  set block_cell_name tick_generator_0
  if { [catch {set tick_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tick_generator_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UART_Rx_0, and set properties
  set block_name UART_Rx
  set block_cell_name UART_Rx_0
  if { [catch {set UART_Rx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UART_Rx_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [list \
    CONFIG.CLKOUT2_JITTER {130.958} \
    CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLK_OUT1_PORT {clk_100MHz} \
    CONFIG.CLK_OUT2_PORT {clk_400MHz} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
    CONFIG.NUM_OUT_CLKS {2} \
    CONFIG.USE_LOCKED {false} \
    CONFIG.USE_RESET {false} \
  ] $clk_wiz_0


  # Create port connections
  connect_bd_net -net GCLK_1 [get_bd_ports GCLK] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net GateKeeper_0_det_out [get_bd_pins GateKeeper_0/det_out] [get_bd_ports det_out_0]
  connect_bd_net -net GateKeeper_1_det_out [get_bd_pins GateKeeper_1/det_out] [get_bd_ports det_out_1]
  connect_bd_net -net GateKeeper_2_det_out [get_bd_pins GateKeeper_2/det_out] [get_bd_ports det_out_2]
  connect_bd_net -net JA10_1 [get_bd_ports JA10] [get_bd_pins UART_Rx_0/PinRx]
  connect_bd_net -net UART_Rx_0_bufferRx [get_bd_pins UART_Rx_0/bufferRx] [get_bd_pins control_parametros_0/bufferRx]
  connect_bd_net -net UART_Rx_0_readyRx [get_bd_pins UART_Rx_0/readyRx] [get_bd_pins control_parametros_0/readyRx]
  connect_bd_net -net clk_wiz_0_clk_100MHz [get_bd_pins clk_wiz_0/clk_100MHz] [get_bd_pins UART_Rx_0/clk] [get_bd_pins tick_generator_0/clk] [get_bd_pins control_parametros_0/clk]
  connect_bd_net -net clk_wiz_0_clk_400MHz [get_bd_pins clk_wiz_0/clk_400MHz] [get_bd_pins GateKeeper_0/clk] [get_bd_pins GateKeeper_1/clk] [get_bd_pins GateKeeper_2/clk]
  connect_bd_net -net control_parametros_0_enableGateKeeper [get_bd_pins control_parametros_0/enableGateKeeper] [get_bd_pins GateKeeper_2/enable] [get_bd_pins GateKeeper_1/enable] [get_bd_pins GateKeeper_0/enable]
  connect_bd_net -net control_parametros_0_pulseShaper_width [get_bd_pins control_parametros_0/pulseShaper_width] [get_bd_pins GateKeeper_2/pulseShaper_width] [get_bd_pins GateKeeper_1/pulseShaper_width] [get_bd_pins GateKeeper_0/pulseShaper_width]
  connect_bd_net -net control_parametros_0_window [get_bd_pins control_parametros_0/window] [get_bd_pins GateKeeper_2/window] [get_bd_pins GateKeeper_1/window] [get_bd_pins GateKeeper_0/window]
  connect_bd_net -net det_in_0_1 [get_bd_ports det_in_0] [get_bd_pins GateKeeper_0/det_in]
  connect_bd_net -net det_in_1_1 [get_bd_ports det_in_1] [get_bd_pins GateKeeper_1/det_in]
  connect_bd_net -net det_in_2_1 [get_bd_ports det_in_2] [get_bd_pins GateKeeper_2/det_in]
  connect_bd_net -net tick_generator_0_tick [get_bd_pins tick_generator_0/tick] [get_bd_pins UART_Rx_0/tick]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


