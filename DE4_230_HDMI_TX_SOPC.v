//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2010 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC_clock_0_in_arbitrator (
                                                    // inputs:
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_readdata,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest,
                                                     clk,
                                                     cpu_data_master_address_to_slave,
                                                     cpu_data_master_byteenable,
                                                     cpu_data_master_read,
                                                     cpu_data_master_waitrequest,
                                                     cpu_data_master_write,
                                                     cpu_data_master_writedata,
                                                     reset_n,

                                                    // outputs:
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_address,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_read,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_write,
                                                     DE4_230_HDMI_TX_SOPC_clock_0_in_writedata,
                                                     cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                                     cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                                     cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                                     cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                                     d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer
                                                  )
;

  output  [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_address;
  output  [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable;
  output           DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa;
  output  [  1: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress;
  output           DE4_230_HDMI_TX_SOPC_clock_0_in_read;
  output  [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa;
  output           DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n;
  output           DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;
  output           DE4_230_HDMI_TX_SOPC_clock_0_in_write;
  output  [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_writedata;
  output           cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in;
  output           cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in;
  output           cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in;
  output           cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;
  output           d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
  input            DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket;
  input   [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata;
  input            DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest;
  input            clk;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_address;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_allgrants;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_allow_new_arb_cycle;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_any_bursting_master_saved_grant;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_any_continuerequest;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_arb_counter_enable;
  reg              DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_set_values;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_beginbursttransfer_internal;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_begins_xfer;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_firsttransfer;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_grant_vector;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_read_cycle;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_write_cycle;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_master_qreq_vector;
  wire    [  1: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_non_bursting_master_requests;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_read;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa;
  reg              DE4_230_HDMI_TX_SOPC_clock_0_in_reg_firsttransfer;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n;
  reg              DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable2;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_unreg_firsttransfer;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_read;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_write;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_write;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_saved_grant_DE4_230_HDMI_TX_SOPC_clock_0_in;
  reg              d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_DE4_230_HDMI_TX_SOPC_clock_0_in_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
    end


  assign DE4_230_HDMI_TX_SOPC_clock_0_in_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in));
  //assign DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_readdata;

  assign cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in = ({cpu_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1041000) & (cpu_data_master_read | cpu_data_master_write);
  //assign DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter set values, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_set_values = 1;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_non_bursting_master_requests mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_non_bursting_master_requests = cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_any_bursting_master_saved_grant mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_any_bursting_master_saved_grant = 0;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value = DE4_230_HDMI_TX_SOPC_clock_0_in_firsttransfer ? (DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_set_values - 1) : |DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter ? (DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter - 1) : 0;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_allgrants all slave grants, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_allgrants = |DE4_230_HDMI_TX_SOPC_clock_0_in_grant_vector;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer = ~(DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_read | DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_write);

  //end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in = DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer & (~DE4_230_HDMI_TX_SOPC_clock_0_in_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter arbitration counter enable, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_arb_counter_enable = (end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in & DE4_230_HDMI_TX_SOPC_clock_0_in_allgrants) | (end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in & ~DE4_230_HDMI_TX_SOPC_clock_0_in_non_bursting_master_requests);

  //DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter <= 0;
      else if (DE4_230_HDMI_TX_SOPC_clock_0_in_arb_counter_enable)
          DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter <= DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable <= 0;
      else if ((|DE4_230_HDMI_TX_SOPC_clock_0_in_master_qreq_vector & end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in) | (end_xfer_arb_share_counter_term_DE4_230_HDMI_TX_SOPC_clock_0_in & ~DE4_230_HDMI_TX_SOPC_clock_0_in_non_bursting_master_requests))
          DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable <= |DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value;
    end


  //cpu/data_master DE4_230_HDMI_TX_SOPC_clock_0/in arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable & cpu_data_master_continuerequest;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable2 = |DE4_230_HDMI_TX_SOPC_clock_0_in_arb_share_counter_next_value;

  //cpu/data_master DE4_230_HDMI_TX_SOPC_clock_0/in arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_any_continuerequest at least one master continues requesting, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in = cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in & ~((cpu_data_master_read & (~cpu_data_master_waitrequest)) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //DE4_230_HDMI_TX_SOPC_clock_0_in_writedata mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_writedata = cpu_data_master_writedata;

  //assign DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa = DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in = cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in;

  //cpu/data_master saved-grant DE4_230_HDMI_TX_SOPC_clock_0/in, which is an e_assign
  assign cpu_data_master_saved_grant_DE4_230_HDMI_TX_SOPC_clock_0_in = cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;

  //allow new arb cycle for DE4_230_HDMI_TX_SOPC_clock_0/in, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_master_qreq_vector = 1;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n = reset_n;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_firsttransfer first transaction, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_firsttransfer = DE4_230_HDMI_TX_SOPC_clock_0_in_begins_xfer ? DE4_230_HDMI_TX_SOPC_clock_0_in_unreg_firsttransfer : DE4_230_HDMI_TX_SOPC_clock_0_in_reg_firsttransfer;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_unreg_firsttransfer first transaction, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_unreg_firsttransfer = ~(DE4_230_HDMI_TX_SOPC_clock_0_in_slavearbiterlockenable & DE4_230_HDMI_TX_SOPC_clock_0_in_any_continuerequest);

  //DE4_230_HDMI_TX_SOPC_clock_0_in_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_in_reg_firsttransfer <= 1'b1;
      else if (DE4_230_HDMI_TX_SOPC_clock_0_in_begins_xfer)
          DE4_230_HDMI_TX_SOPC_clock_0_in_reg_firsttransfer <= DE4_230_HDMI_TX_SOPC_clock_0_in_unreg_firsttransfer;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_in_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_beginbursttransfer_internal = DE4_230_HDMI_TX_SOPC_clock_0_in_begins_xfer;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_read assignment, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_read = cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in & cpu_data_master_read;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_write assignment, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_write = cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in & cpu_data_master_write;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_address mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_address = cpu_data_master_address_to_slave;

  //slaveid DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress nativeaddress mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer <= 1;
      else 
        d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer <= DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_read in a cycle, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_read = DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_read_cycle & DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_read_cycle assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_read_cycle = cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_read_cycle;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_write in a cycle, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_waits_for_write = DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_write_cycle & DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;

  //DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_write_cycle assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_write_cycle = cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = DE4_230_HDMI_TX_SOPC_clock_0_in_in_a_write_cycle;

  assign wait_for_DE4_230_HDMI_TX_SOPC_clock_0_in_counter = 0;
  //DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable byte enable port mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable = (cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE4_230_HDMI_TX_SOPC_clock_0/in enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC_clock_0_out_arbitrator (
                                                     // inputs:
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_address,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_read,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_write,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_writedata,
                                                      clk,
                                                      d1_pll_pll_slave_end_xfer,
                                                      pll_pll_slave_readdata_from_sa,
                                                      reset_n,

                                                     // outputs:
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_readdata,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n,
                                                      DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest
                                                   )
;

  output  [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave;
  output  [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_readdata;
  output           DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n;
  output           DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest;
  input   [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address;
  input   [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_read;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_write;
  input   [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_writedata;
  input            clk;
  input            d1_pll_pll_slave_end_xfer;
  input   [ 31: 0] pll_pll_slave_readdata_from_sa;
  input            reset_n;

  reg     [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address_last_time;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave;
  reg     [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable_last_time;
  reg              DE4_230_HDMI_TX_SOPC_clock_0_out_read_last_time;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_readdata;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_run;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest;
  reg              DE4_230_HDMI_TX_SOPC_clock_0_out_write_last_time;
  reg     [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_writedata_last_time;
  reg              active_and_waiting_last_time;
  wire             r_4;
  //r_4 master_run cascaded wait assignment, which is an e_assign
  assign r_4 = 1 & ((~DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave | ~(DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write) | (1 & (DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write)))) & ((~DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave | ~(DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write) | (1 & (DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write))));

  //cascaded wait assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_run = r_4;

  //optimize select-logic by passing only those address bits which matter.
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave = DE4_230_HDMI_TX_SOPC_clock_0_out_address;

  //DE4_230_HDMI_TX_SOPC_clock_0/out readdata mux, which is an e_mux
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_readdata = pll_pll_slave_readdata_from_sa;

  //actual waitrequest port, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest = ~DE4_230_HDMI_TX_SOPC_clock_0_out_run;

  //DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n assignment, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //DE4_230_HDMI_TX_SOPC_clock_0_out_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_out_address_last_time <= 0;
      else 
        DE4_230_HDMI_TX_SOPC_clock_0_out_address_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_address;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0/out waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest & (DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write);
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE4_230_HDMI_TX_SOPC_clock_0_out_address != DE4_230_HDMI_TX_SOPC_clock_0_out_address_last_time))
        begin
          $write("%0d ns: DE4_230_HDMI_TX_SOPC_clock_0_out_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable_last_time <= 0;
      else 
        DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable != DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable_last_time))
        begin
          $write("%0d ns: DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_out_read_last_time <= 0;
      else 
        DE4_230_HDMI_TX_SOPC_clock_0_out_read_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_read;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE4_230_HDMI_TX_SOPC_clock_0_out_read != DE4_230_HDMI_TX_SOPC_clock_0_out_read_last_time))
        begin
          $write("%0d ns: DE4_230_HDMI_TX_SOPC_clock_0_out_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_out_write_last_time <= 0;
      else 
        DE4_230_HDMI_TX_SOPC_clock_0_out_write_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_write;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE4_230_HDMI_TX_SOPC_clock_0_out_write != DE4_230_HDMI_TX_SOPC_clock_0_out_write_last_time))
        begin
          $write("%0d ns: DE4_230_HDMI_TX_SOPC_clock_0_out_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          DE4_230_HDMI_TX_SOPC_clock_0_out_writedata_last_time <= 0;
      else 
        DE4_230_HDMI_TX_SOPC_clock_0_out_writedata_last_time <= DE4_230_HDMI_TX_SOPC_clock_0_out_writedata;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0_out_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (DE4_230_HDMI_TX_SOPC_clock_0_out_writedata != DE4_230_HDMI_TX_SOPC_clock_0_out_writedata_last_time) & DE4_230_HDMI_TX_SOPC_clock_0_out_write)
        begin
          $write("%0d ns: DE4_230_HDMI_TX_SOPC_clock_0_out_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module rdv_fifo_for_cpu_data_master_to_clock_crossing_bridge_s1_module (
                                                                         // inputs:
                                                                          clear_fifo,
                                                                          clk,
                                                                          data_in,
                                                                          read,
                                                                          reset_n,
                                                                          sync_reset,
                                                                          write,

                                                                         // outputs:
                                                                          data_out,
                                                                          empty,
                                                                          fifo_contains_ones_n,
                                                                          full
                                                                       )
;

  output           data_out;
  output           empty;
  output           fifo_contains_ones_n;
  output           full;
  input            clear_fifo;
  input            clk;
  input            data_in;
  input            read;
  input            reset_n;
  input            sync_reset;
  input            write;

  wire             data_out;
  wire             empty;
  reg              fifo_contains_ones_n;
  wire             full;
  reg              full_0;
  reg              full_1;
  reg              full_10;
  reg              full_11;
  reg              full_12;
  reg              full_13;
  reg              full_14;
  reg              full_15;
  reg              full_16;
  reg              full_17;
  reg              full_18;
  reg              full_19;
  reg              full_2;
  reg              full_20;
  reg              full_21;
  reg              full_22;
  reg              full_23;
  reg              full_24;
  reg              full_25;
  reg              full_26;
  reg              full_27;
  reg              full_28;
  reg              full_29;
  reg              full_3;
  reg              full_30;
  reg              full_31;
  reg              full_32;
  reg              full_33;
  reg              full_34;
  reg              full_35;
  reg              full_36;
  reg              full_37;
  reg              full_38;
  reg              full_39;
  reg              full_4;
  reg              full_40;
  reg              full_41;
  reg              full_42;
  reg              full_43;
  reg              full_44;
  reg              full_45;
  reg              full_46;
  reg              full_47;
  reg              full_48;
  reg              full_49;
  reg              full_5;
  reg              full_50;
  reg              full_51;
  reg              full_52;
  reg              full_53;
  reg              full_54;
  reg              full_55;
  reg              full_56;
  reg              full_57;
  reg              full_58;
  reg              full_59;
  reg              full_6;
  reg              full_60;
  reg              full_61;
  reg              full_62;
  reg              full_63;
  wire             full_64;
  reg              full_7;
  reg              full_8;
  reg              full_9;
  reg     [  7: 0] how_many_ones;
  wire    [  7: 0] one_count_minus_one;
  wire    [  7: 0] one_count_plus_one;
  wire             p0_full_0;
  wire             p0_stage_0;
  wire             p10_full_10;
  wire             p10_stage_10;
  wire             p11_full_11;
  wire             p11_stage_11;
  wire             p12_full_12;
  wire             p12_stage_12;
  wire             p13_full_13;
  wire             p13_stage_13;
  wire             p14_full_14;
  wire             p14_stage_14;
  wire             p15_full_15;
  wire             p15_stage_15;
  wire             p16_full_16;
  wire             p16_stage_16;
  wire             p17_full_17;
  wire             p17_stage_17;
  wire             p18_full_18;
  wire             p18_stage_18;
  wire             p19_full_19;
  wire             p19_stage_19;
  wire             p1_full_1;
  wire             p1_stage_1;
  wire             p20_full_20;
  wire             p20_stage_20;
  wire             p21_full_21;
  wire             p21_stage_21;
  wire             p22_full_22;
  wire             p22_stage_22;
  wire             p23_full_23;
  wire             p23_stage_23;
  wire             p24_full_24;
  wire             p24_stage_24;
  wire             p25_full_25;
  wire             p25_stage_25;
  wire             p26_full_26;
  wire             p26_stage_26;
  wire             p27_full_27;
  wire             p27_stage_27;
  wire             p28_full_28;
  wire             p28_stage_28;
  wire             p29_full_29;
  wire             p29_stage_29;
  wire             p2_full_2;
  wire             p2_stage_2;
  wire             p30_full_30;
  wire             p30_stage_30;
  wire             p31_full_31;
  wire             p31_stage_31;
  wire             p32_full_32;
  wire             p32_stage_32;
  wire             p33_full_33;
  wire             p33_stage_33;
  wire             p34_full_34;
  wire             p34_stage_34;
  wire             p35_full_35;
  wire             p35_stage_35;
  wire             p36_full_36;
  wire             p36_stage_36;
  wire             p37_full_37;
  wire             p37_stage_37;
  wire             p38_full_38;
  wire             p38_stage_38;
  wire             p39_full_39;
  wire             p39_stage_39;
  wire             p3_full_3;
  wire             p3_stage_3;
  wire             p40_full_40;
  wire             p40_stage_40;
  wire             p41_full_41;
  wire             p41_stage_41;
  wire             p42_full_42;
  wire             p42_stage_42;
  wire             p43_full_43;
  wire             p43_stage_43;
  wire             p44_full_44;
  wire             p44_stage_44;
  wire             p45_full_45;
  wire             p45_stage_45;
  wire             p46_full_46;
  wire             p46_stage_46;
  wire             p47_full_47;
  wire             p47_stage_47;
  wire             p48_full_48;
  wire             p48_stage_48;
  wire             p49_full_49;
  wire             p49_stage_49;
  wire             p4_full_4;
  wire             p4_stage_4;
  wire             p50_full_50;
  wire             p50_stage_50;
  wire             p51_full_51;
  wire             p51_stage_51;
  wire             p52_full_52;
  wire             p52_stage_52;
  wire             p53_full_53;
  wire             p53_stage_53;
  wire             p54_full_54;
  wire             p54_stage_54;
  wire             p55_full_55;
  wire             p55_stage_55;
  wire             p56_full_56;
  wire             p56_stage_56;
  wire             p57_full_57;
  wire             p57_stage_57;
  wire             p58_full_58;
  wire             p58_stage_58;
  wire             p59_full_59;
  wire             p59_stage_59;
  wire             p5_full_5;
  wire             p5_stage_5;
  wire             p60_full_60;
  wire             p60_stage_60;
  wire             p61_full_61;
  wire             p61_stage_61;
  wire             p62_full_62;
  wire             p62_stage_62;
  wire             p63_full_63;
  wire             p63_stage_63;
  wire             p6_full_6;
  wire             p6_stage_6;
  wire             p7_full_7;
  wire             p7_stage_7;
  wire             p8_full_8;
  wire             p8_stage_8;
  wire             p9_full_9;
  wire             p9_stage_9;
  reg              stage_0;
  reg              stage_1;
  reg              stage_10;
  reg              stage_11;
  reg              stage_12;
  reg              stage_13;
  reg              stage_14;
  reg              stage_15;
  reg              stage_16;
  reg              stage_17;
  reg              stage_18;
  reg              stage_19;
  reg              stage_2;
  reg              stage_20;
  reg              stage_21;
  reg              stage_22;
  reg              stage_23;
  reg              stage_24;
  reg              stage_25;
  reg              stage_26;
  reg              stage_27;
  reg              stage_28;
  reg              stage_29;
  reg              stage_3;
  reg              stage_30;
  reg              stage_31;
  reg              stage_32;
  reg              stage_33;
  reg              stage_34;
  reg              stage_35;
  reg              stage_36;
  reg              stage_37;
  reg              stage_38;
  reg              stage_39;
  reg              stage_4;
  reg              stage_40;
  reg              stage_41;
  reg              stage_42;
  reg              stage_43;
  reg              stage_44;
  reg              stage_45;
  reg              stage_46;
  reg              stage_47;
  reg              stage_48;
  reg              stage_49;
  reg              stage_5;
  reg              stage_50;
  reg              stage_51;
  reg              stage_52;
  reg              stage_53;
  reg              stage_54;
  reg              stage_55;
  reg              stage_56;
  reg              stage_57;
  reg              stage_58;
  reg              stage_59;
  reg              stage_6;
  reg              stage_60;
  reg              stage_61;
  reg              stage_62;
  reg              stage_63;
  reg              stage_7;
  reg              stage_8;
  reg              stage_9;
  wire    [  7: 0] updated_one_count;
  assign data_out = stage_0;
  assign full = full_63;
  assign empty = !full_0;
  assign full_64 = 0;
  //data_63, which is an e_mux
  assign p63_stage_63 = ((full_64 & ~clear_fifo) == 0)? data_in :
    data_in;

  //data_reg_63, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_63 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_63))
          if (sync_reset & full_63 & !((full_64 == 0) & read & write))
              stage_63 <= 0;
          else 
            stage_63 <= p63_stage_63;
    end


  //control_63, which is an e_mux
  assign p63_full_63 = ((read & !write) == 0)? full_62 :
    0;

  //control_reg_63, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_63 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_63 <= 0;
          else 
            full_63 <= p63_full_63;
    end


  //data_62, which is an e_mux
  assign p62_stage_62 = ((full_63 & ~clear_fifo) == 0)? data_in :
    stage_63;

  //data_reg_62, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_62 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_62))
          if (sync_reset & full_62 & !((full_63 == 0) & read & write))
              stage_62 <= 0;
          else 
            stage_62 <= p62_stage_62;
    end


  //control_62, which is an e_mux
  assign p62_full_62 = ((read & !write) == 0)? full_61 :
    full_63;

  //control_reg_62, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_62 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_62 <= 0;
          else 
            full_62 <= p62_full_62;
    end


  //data_61, which is an e_mux
  assign p61_stage_61 = ((full_62 & ~clear_fifo) == 0)? data_in :
    stage_62;

  //data_reg_61, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_61 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_61))
          if (sync_reset & full_61 & !((full_62 == 0) & read & write))
              stage_61 <= 0;
          else 
            stage_61 <= p61_stage_61;
    end


  //control_61, which is an e_mux
  assign p61_full_61 = ((read & !write) == 0)? full_60 :
    full_62;

  //control_reg_61, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_61 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_61 <= 0;
          else 
            full_61 <= p61_full_61;
    end


  //data_60, which is an e_mux
  assign p60_stage_60 = ((full_61 & ~clear_fifo) == 0)? data_in :
    stage_61;

  //data_reg_60, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_60 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_60))
          if (sync_reset & full_60 & !((full_61 == 0) & read & write))
              stage_60 <= 0;
          else 
            stage_60 <= p60_stage_60;
    end


  //control_60, which is an e_mux
  assign p60_full_60 = ((read & !write) == 0)? full_59 :
    full_61;

  //control_reg_60, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_60 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_60 <= 0;
          else 
            full_60 <= p60_full_60;
    end


  //data_59, which is an e_mux
  assign p59_stage_59 = ((full_60 & ~clear_fifo) == 0)? data_in :
    stage_60;

  //data_reg_59, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_59 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_59))
          if (sync_reset & full_59 & !((full_60 == 0) & read & write))
              stage_59 <= 0;
          else 
            stage_59 <= p59_stage_59;
    end


  //control_59, which is an e_mux
  assign p59_full_59 = ((read & !write) == 0)? full_58 :
    full_60;

  //control_reg_59, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_59 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_59 <= 0;
          else 
            full_59 <= p59_full_59;
    end


  //data_58, which is an e_mux
  assign p58_stage_58 = ((full_59 & ~clear_fifo) == 0)? data_in :
    stage_59;

  //data_reg_58, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_58 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_58))
          if (sync_reset & full_58 & !((full_59 == 0) & read & write))
              stage_58 <= 0;
          else 
            stage_58 <= p58_stage_58;
    end


  //control_58, which is an e_mux
  assign p58_full_58 = ((read & !write) == 0)? full_57 :
    full_59;

  //control_reg_58, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_58 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_58 <= 0;
          else 
            full_58 <= p58_full_58;
    end


  //data_57, which is an e_mux
  assign p57_stage_57 = ((full_58 & ~clear_fifo) == 0)? data_in :
    stage_58;

  //data_reg_57, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_57 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_57))
          if (sync_reset & full_57 & !((full_58 == 0) & read & write))
              stage_57 <= 0;
          else 
            stage_57 <= p57_stage_57;
    end


  //control_57, which is an e_mux
  assign p57_full_57 = ((read & !write) == 0)? full_56 :
    full_58;

  //control_reg_57, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_57 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_57 <= 0;
          else 
            full_57 <= p57_full_57;
    end


  //data_56, which is an e_mux
  assign p56_stage_56 = ((full_57 & ~clear_fifo) == 0)? data_in :
    stage_57;

  //data_reg_56, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_56 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_56))
          if (sync_reset & full_56 & !((full_57 == 0) & read & write))
              stage_56 <= 0;
          else 
            stage_56 <= p56_stage_56;
    end


  //control_56, which is an e_mux
  assign p56_full_56 = ((read & !write) == 0)? full_55 :
    full_57;

  //control_reg_56, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_56 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_56 <= 0;
          else 
            full_56 <= p56_full_56;
    end


  //data_55, which is an e_mux
  assign p55_stage_55 = ((full_56 & ~clear_fifo) == 0)? data_in :
    stage_56;

  //data_reg_55, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_55 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_55))
          if (sync_reset & full_55 & !((full_56 == 0) & read & write))
              stage_55 <= 0;
          else 
            stage_55 <= p55_stage_55;
    end


  //control_55, which is an e_mux
  assign p55_full_55 = ((read & !write) == 0)? full_54 :
    full_56;

  //control_reg_55, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_55 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_55 <= 0;
          else 
            full_55 <= p55_full_55;
    end


  //data_54, which is an e_mux
  assign p54_stage_54 = ((full_55 & ~clear_fifo) == 0)? data_in :
    stage_55;

  //data_reg_54, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_54 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_54))
          if (sync_reset & full_54 & !((full_55 == 0) & read & write))
              stage_54 <= 0;
          else 
            stage_54 <= p54_stage_54;
    end


  //control_54, which is an e_mux
  assign p54_full_54 = ((read & !write) == 0)? full_53 :
    full_55;

  //control_reg_54, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_54 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_54 <= 0;
          else 
            full_54 <= p54_full_54;
    end


  //data_53, which is an e_mux
  assign p53_stage_53 = ((full_54 & ~clear_fifo) == 0)? data_in :
    stage_54;

  //data_reg_53, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_53 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_53))
          if (sync_reset & full_53 & !((full_54 == 0) & read & write))
              stage_53 <= 0;
          else 
            stage_53 <= p53_stage_53;
    end


  //control_53, which is an e_mux
  assign p53_full_53 = ((read & !write) == 0)? full_52 :
    full_54;

  //control_reg_53, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_53 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_53 <= 0;
          else 
            full_53 <= p53_full_53;
    end


  //data_52, which is an e_mux
  assign p52_stage_52 = ((full_53 & ~clear_fifo) == 0)? data_in :
    stage_53;

  //data_reg_52, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_52 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_52))
          if (sync_reset & full_52 & !((full_53 == 0) & read & write))
              stage_52 <= 0;
          else 
            stage_52 <= p52_stage_52;
    end


  //control_52, which is an e_mux
  assign p52_full_52 = ((read & !write) == 0)? full_51 :
    full_53;

  //control_reg_52, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_52 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_52 <= 0;
          else 
            full_52 <= p52_full_52;
    end


  //data_51, which is an e_mux
  assign p51_stage_51 = ((full_52 & ~clear_fifo) == 0)? data_in :
    stage_52;

  //data_reg_51, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_51 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_51))
          if (sync_reset & full_51 & !((full_52 == 0) & read & write))
              stage_51 <= 0;
          else 
            stage_51 <= p51_stage_51;
    end


  //control_51, which is an e_mux
  assign p51_full_51 = ((read & !write) == 0)? full_50 :
    full_52;

  //control_reg_51, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_51 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_51 <= 0;
          else 
            full_51 <= p51_full_51;
    end


  //data_50, which is an e_mux
  assign p50_stage_50 = ((full_51 & ~clear_fifo) == 0)? data_in :
    stage_51;

  //data_reg_50, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_50 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_50))
          if (sync_reset & full_50 & !((full_51 == 0) & read & write))
              stage_50 <= 0;
          else 
            stage_50 <= p50_stage_50;
    end


  //control_50, which is an e_mux
  assign p50_full_50 = ((read & !write) == 0)? full_49 :
    full_51;

  //control_reg_50, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_50 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_50 <= 0;
          else 
            full_50 <= p50_full_50;
    end


  //data_49, which is an e_mux
  assign p49_stage_49 = ((full_50 & ~clear_fifo) == 0)? data_in :
    stage_50;

  //data_reg_49, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_49 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_49))
          if (sync_reset & full_49 & !((full_50 == 0) & read & write))
              stage_49 <= 0;
          else 
            stage_49 <= p49_stage_49;
    end


  //control_49, which is an e_mux
  assign p49_full_49 = ((read & !write) == 0)? full_48 :
    full_50;

  //control_reg_49, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_49 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_49 <= 0;
          else 
            full_49 <= p49_full_49;
    end


  //data_48, which is an e_mux
  assign p48_stage_48 = ((full_49 & ~clear_fifo) == 0)? data_in :
    stage_49;

  //data_reg_48, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_48 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_48))
          if (sync_reset & full_48 & !((full_49 == 0) & read & write))
              stage_48 <= 0;
          else 
            stage_48 <= p48_stage_48;
    end


  //control_48, which is an e_mux
  assign p48_full_48 = ((read & !write) == 0)? full_47 :
    full_49;

  //control_reg_48, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_48 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_48 <= 0;
          else 
            full_48 <= p48_full_48;
    end


  //data_47, which is an e_mux
  assign p47_stage_47 = ((full_48 & ~clear_fifo) == 0)? data_in :
    stage_48;

  //data_reg_47, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_47 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_47))
          if (sync_reset & full_47 & !((full_48 == 0) & read & write))
              stage_47 <= 0;
          else 
            stage_47 <= p47_stage_47;
    end


  //control_47, which is an e_mux
  assign p47_full_47 = ((read & !write) == 0)? full_46 :
    full_48;

  //control_reg_47, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_47 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_47 <= 0;
          else 
            full_47 <= p47_full_47;
    end


  //data_46, which is an e_mux
  assign p46_stage_46 = ((full_47 & ~clear_fifo) == 0)? data_in :
    stage_47;

  //data_reg_46, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_46 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_46))
          if (sync_reset & full_46 & !((full_47 == 0) & read & write))
              stage_46 <= 0;
          else 
            stage_46 <= p46_stage_46;
    end


  //control_46, which is an e_mux
  assign p46_full_46 = ((read & !write) == 0)? full_45 :
    full_47;

  //control_reg_46, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_46 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_46 <= 0;
          else 
            full_46 <= p46_full_46;
    end


  //data_45, which is an e_mux
  assign p45_stage_45 = ((full_46 & ~clear_fifo) == 0)? data_in :
    stage_46;

  //data_reg_45, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_45 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_45))
          if (sync_reset & full_45 & !((full_46 == 0) & read & write))
              stage_45 <= 0;
          else 
            stage_45 <= p45_stage_45;
    end


  //control_45, which is an e_mux
  assign p45_full_45 = ((read & !write) == 0)? full_44 :
    full_46;

  //control_reg_45, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_45 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_45 <= 0;
          else 
            full_45 <= p45_full_45;
    end


  //data_44, which is an e_mux
  assign p44_stage_44 = ((full_45 & ~clear_fifo) == 0)? data_in :
    stage_45;

  //data_reg_44, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_44 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_44))
          if (sync_reset & full_44 & !((full_45 == 0) & read & write))
              stage_44 <= 0;
          else 
            stage_44 <= p44_stage_44;
    end


  //control_44, which is an e_mux
  assign p44_full_44 = ((read & !write) == 0)? full_43 :
    full_45;

  //control_reg_44, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_44 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_44 <= 0;
          else 
            full_44 <= p44_full_44;
    end


  //data_43, which is an e_mux
  assign p43_stage_43 = ((full_44 & ~clear_fifo) == 0)? data_in :
    stage_44;

  //data_reg_43, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_43 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_43))
          if (sync_reset & full_43 & !((full_44 == 0) & read & write))
              stage_43 <= 0;
          else 
            stage_43 <= p43_stage_43;
    end


  //control_43, which is an e_mux
  assign p43_full_43 = ((read & !write) == 0)? full_42 :
    full_44;

  //control_reg_43, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_43 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_43 <= 0;
          else 
            full_43 <= p43_full_43;
    end


  //data_42, which is an e_mux
  assign p42_stage_42 = ((full_43 & ~clear_fifo) == 0)? data_in :
    stage_43;

  //data_reg_42, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_42 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_42))
          if (sync_reset & full_42 & !((full_43 == 0) & read & write))
              stage_42 <= 0;
          else 
            stage_42 <= p42_stage_42;
    end


  //control_42, which is an e_mux
  assign p42_full_42 = ((read & !write) == 0)? full_41 :
    full_43;

  //control_reg_42, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_42 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_42 <= 0;
          else 
            full_42 <= p42_full_42;
    end


  //data_41, which is an e_mux
  assign p41_stage_41 = ((full_42 & ~clear_fifo) == 0)? data_in :
    stage_42;

  //data_reg_41, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_41 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_41))
          if (sync_reset & full_41 & !((full_42 == 0) & read & write))
              stage_41 <= 0;
          else 
            stage_41 <= p41_stage_41;
    end


  //control_41, which is an e_mux
  assign p41_full_41 = ((read & !write) == 0)? full_40 :
    full_42;

  //control_reg_41, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_41 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_41 <= 0;
          else 
            full_41 <= p41_full_41;
    end


  //data_40, which is an e_mux
  assign p40_stage_40 = ((full_41 & ~clear_fifo) == 0)? data_in :
    stage_41;

  //data_reg_40, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_40 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_40))
          if (sync_reset & full_40 & !((full_41 == 0) & read & write))
              stage_40 <= 0;
          else 
            stage_40 <= p40_stage_40;
    end


  //control_40, which is an e_mux
  assign p40_full_40 = ((read & !write) == 0)? full_39 :
    full_41;

  //control_reg_40, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_40 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_40 <= 0;
          else 
            full_40 <= p40_full_40;
    end


  //data_39, which is an e_mux
  assign p39_stage_39 = ((full_40 & ~clear_fifo) == 0)? data_in :
    stage_40;

  //data_reg_39, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_39 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_39))
          if (sync_reset & full_39 & !((full_40 == 0) & read & write))
              stage_39 <= 0;
          else 
            stage_39 <= p39_stage_39;
    end


  //control_39, which is an e_mux
  assign p39_full_39 = ((read & !write) == 0)? full_38 :
    full_40;

  //control_reg_39, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_39 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_39 <= 0;
          else 
            full_39 <= p39_full_39;
    end


  //data_38, which is an e_mux
  assign p38_stage_38 = ((full_39 & ~clear_fifo) == 0)? data_in :
    stage_39;

  //data_reg_38, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_38 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_38))
          if (sync_reset & full_38 & !((full_39 == 0) & read & write))
              stage_38 <= 0;
          else 
            stage_38 <= p38_stage_38;
    end


  //control_38, which is an e_mux
  assign p38_full_38 = ((read & !write) == 0)? full_37 :
    full_39;

  //control_reg_38, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_38 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_38 <= 0;
          else 
            full_38 <= p38_full_38;
    end


  //data_37, which is an e_mux
  assign p37_stage_37 = ((full_38 & ~clear_fifo) == 0)? data_in :
    stage_38;

  //data_reg_37, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_37 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_37))
          if (sync_reset & full_37 & !((full_38 == 0) & read & write))
              stage_37 <= 0;
          else 
            stage_37 <= p37_stage_37;
    end


  //control_37, which is an e_mux
  assign p37_full_37 = ((read & !write) == 0)? full_36 :
    full_38;

  //control_reg_37, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_37 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_37 <= 0;
          else 
            full_37 <= p37_full_37;
    end


  //data_36, which is an e_mux
  assign p36_stage_36 = ((full_37 & ~clear_fifo) == 0)? data_in :
    stage_37;

  //data_reg_36, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_36 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_36))
          if (sync_reset & full_36 & !((full_37 == 0) & read & write))
              stage_36 <= 0;
          else 
            stage_36 <= p36_stage_36;
    end


  //control_36, which is an e_mux
  assign p36_full_36 = ((read & !write) == 0)? full_35 :
    full_37;

  //control_reg_36, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_36 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_36 <= 0;
          else 
            full_36 <= p36_full_36;
    end


  //data_35, which is an e_mux
  assign p35_stage_35 = ((full_36 & ~clear_fifo) == 0)? data_in :
    stage_36;

  //data_reg_35, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_35 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_35))
          if (sync_reset & full_35 & !((full_36 == 0) & read & write))
              stage_35 <= 0;
          else 
            stage_35 <= p35_stage_35;
    end


  //control_35, which is an e_mux
  assign p35_full_35 = ((read & !write) == 0)? full_34 :
    full_36;

  //control_reg_35, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_35 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_35 <= 0;
          else 
            full_35 <= p35_full_35;
    end


  //data_34, which is an e_mux
  assign p34_stage_34 = ((full_35 & ~clear_fifo) == 0)? data_in :
    stage_35;

  //data_reg_34, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_34 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_34))
          if (sync_reset & full_34 & !((full_35 == 0) & read & write))
              stage_34 <= 0;
          else 
            stage_34 <= p34_stage_34;
    end


  //control_34, which is an e_mux
  assign p34_full_34 = ((read & !write) == 0)? full_33 :
    full_35;

  //control_reg_34, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_34 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_34 <= 0;
          else 
            full_34 <= p34_full_34;
    end


  //data_33, which is an e_mux
  assign p33_stage_33 = ((full_34 & ~clear_fifo) == 0)? data_in :
    stage_34;

  //data_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_33 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_33))
          if (sync_reset & full_33 & !((full_34 == 0) & read & write))
              stage_33 <= 0;
          else 
            stage_33 <= p33_stage_33;
    end


  //control_33, which is an e_mux
  assign p33_full_33 = ((read & !write) == 0)? full_32 :
    full_34;

  //control_reg_33, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_33 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_33 <= 0;
          else 
            full_33 <= p33_full_33;
    end


  //data_32, which is an e_mux
  assign p32_stage_32 = ((full_33 & ~clear_fifo) == 0)? data_in :
    stage_33;

  //data_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_32 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_32))
          if (sync_reset & full_32 & !((full_33 == 0) & read & write))
              stage_32 <= 0;
          else 
            stage_32 <= p32_stage_32;
    end


  //control_32, which is an e_mux
  assign p32_full_32 = ((read & !write) == 0)? full_31 :
    full_33;

  //control_reg_32, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_32 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_32 <= 0;
          else 
            full_32 <= p32_full_32;
    end


  //data_31, which is an e_mux
  assign p31_stage_31 = ((full_32 & ~clear_fifo) == 0)? data_in :
    stage_32;

  //data_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_31 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_31))
          if (sync_reset & full_31 & !((full_32 == 0) & read & write))
              stage_31 <= 0;
          else 
            stage_31 <= p31_stage_31;
    end


  //control_31, which is an e_mux
  assign p31_full_31 = ((read & !write) == 0)? full_30 :
    full_32;

  //control_reg_31, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_31 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_31 <= 0;
          else 
            full_31 <= p31_full_31;
    end


  //data_30, which is an e_mux
  assign p30_stage_30 = ((full_31 & ~clear_fifo) == 0)? data_in :
    stage_31;

  //data_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_30 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_30))
          if (sync_reset & full_30 & !((full_31 == 0) & read & write))
              stage_30 <= 0;
          else 
            stage_30 <= p30_stage_30;
    end


  //control_30, which is an e_mux
  assign p30_full_30 = ((read & !write) == 0)? full_29 :
    full_31;

  //control_reg_30, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_30 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_30 <= 0;
          else 
            full_30 <= p30_full_30;
    end


  //data_29, which is an e_mux
  assign p29_stage_29 = ((full_30 & ~clear_fifo) == 0)? data_in :
    stage_30;

  //data_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_29 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_29))
          if (sync_reset & full_29 & !((full_30 == 0) & read & write))
              stage_29 <= 0;
          else 
            stage_29 <= p29_stage_29;
    end


  //control_29, which is an e_mux
  assign p29_full_29 = ((read & !write) == 0)? full_28 :
    full_30;

  //control_reg_29, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_29 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_29 <= 0;
          else 
            full_29 <= p29_full_29;
    end


  //data_28, which is an e_mux
  assign p28_stage_28 = ((full_29 & ~clear_fifo) == 0)? data_in :
    stage_29;

  //data_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_28 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_28))
          if (sync_reset & full_28 & !((full_29 == 0) & read & write))
              stage_28 <= 0;
          else 
            stage_28 <= p28_stage_28;
    end


  //control_28, which is an e_mux
  assign p28_full_28 = ((read & !write) == 0)? full_27 :
    full_29;

  //control_reg_28, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_28 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_28 <= 0;
          else 
            full_28 <= p28_full_28;
    end


  //data_27, which is an e_mux
  assign p27_stage_27 = ((full_28 & ~clear_fifo) == 0)? data_in :
    stage_28;

  //data_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_27 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_27))
          if (sync_reset & full_27 & !((full_28 == 0) & read & write))
              stage_27 <= 0;
          else 
            stage_27 <= p27_stage_27;
    end


  //control_27, which is an e_mux
  assign p27_full_27 = ((read & !write) == 0)? full_26 :
    full_28;

  //control_reg_27, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_27 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_27 <= 0;
          else 
            full_27 <= p27_full_27;
    end


  //data_26, which is an e_mux
  assign p26_stage_26 = ((full_27 & ~clear_fifo) == 0)? data_in :
    stage_27;

  //data_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_26 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_26))
          if (sync_reset & full_26 & !((full_27 == 0) & read & write))
              stage_26 <= 0;
          else 
            stage_26 <= p26_stage_26;
    end


  //control_26, which is an e_mux
  assign p26_full_26 = ((read & !write) == 0)? full_25 :
    full_27;

  //control_reg_26, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_26 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_26 <= 0;
          else 
            full_26 <= p26_full_26;
    end


  //data_25, which is an e_mux
  assign p25_stage_25 = ((full_26 & ~clear_fifo) == 0)? data_in :
    stage_26;

  //data_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_25 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_25))
          if (sync_reset & full_25 & !((full_26 == 0) & read & write))
              stage_25 <= 0;
          else 
            stage_25 <= p25_stage_25;
    end


  //control_25, which is an e_mux
  assign p25_full_25 = ((read & !write) == 0)? full_24 :
    full_26;

  //control_reg_25, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_25 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_25 <= 0;
          else 
            full_25 <= p25_full_25;
    end


  //data_24, which is an e_mux
  assign p24_stage_24 = ((full_25 & ~clear_fifo) == 0)? data_in :
    stage_25;

  //data_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_24 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_24))
          if (sync_reset & full_24 & !((full_25 == 0) & read & write))
              stage_24 <= 0;
          else 
            stage_24 <= p24_stage_24;
    end


  //control_24, which is an e_mux
  assign p24_full_24 = ((read & !write) == 0)? full_23 :
    full_25;

  //control_reg_24, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_24 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_24 <= 0;
          else 
            full_24 <= p24_full_24;
    end


  //data_23, which is an e_mux
  assign p23_stage_23 = ((full_24 & ~clear_fifo) == 0)? data_in :
    stage_24;

  //data_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_23 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_23))
          if (sync_reset & full_23 & !((full_24 == 0) & read & write))
              stage_23 <= 0;
          else 
            stage_23 <= p23_stage_23;
    end


  //control_23, which is an e_mux
  assign p23_full_23 = ((read & !write) == 0)? full_22 :
    full_24;

  //control_reg_23, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_23 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_23 <= 0;
          else 
            full_23 <= p23_full_23;
    end


  //data_22, which is an e_mux
  assign p22_stage_22 = ((full_23 & ~clear_fifo) == 0)? data_in :
    stage_23;

  //data_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_22 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_22))
          if (sync_reset & full_22 & !((full_23 == 0) & read & write))
              stage_22 <= 0;
          else 
            stage_22 <= p22_stage_22;
    end


  //control_22, which is an e_mux
  assign p22_full_22 = ((read & !write) == 0)? full_21 :
    full_23;

  //control_reg_22, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_22 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_22 <= 0;
          else 
            full_22 <= p22_full_22;
    end


  //data_21, which is an e_mux
  assign p21_stage_21 = ((full_22 & ~clear_fifo) == 0)? data_in :
    stage_22;

  //data_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_21 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_21))
          if (sync_reset & full_21 & !((full_22 == 0) & read & write))
              stage_21 <= 0;
          else 
            stage_21 <= p21_stage_21;
    end


  //control_21, which is an e_mux
  assign p21_full_21 = ((read & !write) == 0)? full_20 :
    full_22;

  //control_reg_21, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_21 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_21 <= 0;
          else 
            full_21 <= p21_full_21;
    end


  //data_20, which is an e_mux
  assign p20_stage_20 = ((full_21 & ~clear_fifo) == 0)? data_in :
    stage_21;

  //data_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_20 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_20))
          if (sync_reset & full_20 & !((full_21 == 0) & read & write))
              stage_20 <= 0;
          else 
            stage_20 <= p20_stage_20;
    end


  //control_20, which is an e_mux
  assign p20_full_20 = ((read & !write) == 0)? full_19 :
    full_21;

  //control_reg_20, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_20 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_20 <= 0;
          else 
            full_20 <= p20_full_20;
    end


  //data_19, which is an e_mux
  assign p19_stage_19 = ((full_20 & ~clear_fifo) == 0)? data_in :
    stage_20;

  //data_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_19 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_19))
          if (sync_reset & full_19 & !((full_20 == 0) & read & write))
              stage_19 <= 0;
          else 
            stage_19 <= p19_stage_19;
    end


  //control_19, which is an e_mux
  assign p19_full_19 = ((read & !write) == 0)? full_18 :
    full_20;

  //control_reg_19, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_19 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_19 <= 0;
          else 
            full_19 <= p19_full_19;
    end


  //data_18, which is an e_mux
  assign p18_stage_18 = ((full_19 & ~clear_fifo) == 0)? data_in :
    stage_19;

  //data_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_18 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_18))
          if (sync_reset & full_18 & !((full_19 == 0) & read & write))
              stage_18 <= 0;
          else 
            stage_18 <= p18_stage_18;
    end


  //control_18, which is an e_mux
  assign p18_full_18 = ((read & !write) == 0)? full_17 :
    full_19;

  //control_reg_18, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_18 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_18 <= 0;
          else 
            full_18 <= p18_full_18;
    end


  //data_17, which is an e_mux
  assign p17_stage_17 = ((full_18 & ~clear_fifo) == 0)? data_in :
    stage_18;

  //data_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_17 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_17))
          if (sync_reset & full_17 & !((full_18 == 0) & read & write))
              stage_17 <= 0;
          else 
            stage_17 <= p17_stage_17;
    end


  //control_17, which is an e_mux
  assign p17_full_17 = ((read & !write) == 0)? full_16 :
    full_18;

  //control_reg_17, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_17 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_17 <= 0;
          else 
            full_17 <= p17_full_17;
    end


  //data_16, which is an e_mux
  assign p16_stage_16 = ((full_17 & ~clear_fifo) == 0)? data_in :
    stage_17;

  //data_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_16 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_16))
          if (sync_reset & full_16 & !((full_17 == 0) & read & write))
              stage_16 <= 0;
          else 
            stage_16 <= p16_stage_16;
    end


  //control_16, which is an e_mux
  assign p16_full_16 = ((read & !write) == 0)? full_15 :
    full_17;

  //control_reg_16, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_16 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_16 <= 0;
          else 
            full_16 <= p16_full_16;
    end


  //data_15, which is an e_mux
  assign p15_stage_15 = ((full_16 & ~clear_fifo) == 0)? data_in :
    stage_16;

  //data_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_15 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_15))
          if (sync_reset & full_15 & !((full_16 == 0) & read & write))
              stage_15 <= 0;
          else 
            stage_15 <= p15_stage_15;
    end


  //control_15, which is an e_mux
  assign p15_full_15 = ((read & !write) == 0)? full_14 :
    full_16;

  //control_reg_15, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_15 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_15 <= 0;
          else 
            full_15 <= p15_full_15;
    end


  //data_14, which is an e_mux
  assign p14_stage_14 = ((full_15 & ~clear_fifo) == 0)? data_in :
    stage_15;

  //data_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_14 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_14))
          if (sync_reset & full_14 & !((full_15 == 0) & read & write))
              stage_14 <= 0;
          else 
            stage_14 <= p14_stage_14;
    end


  //control_14, which is an e_mux
  assign p14_full_14 = ((read & !write) == 0)? full_13 :
    full_15;

  //control_reg_14, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_14 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_14 <= 0;
          else 
            full_14 <= p14_full_14;
    end


  //data_13, which is an e_mux
  assign p13_stage_13 = ((full_14 & ~clear_fifo) == 0)? data_in :
    stage_14;

  //data_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_13 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_13))
          if (sync_reset & full_13 & !((full_14 == 0) & read & write))
              stage_13 <= 0;
          else 
            stage_13 <= p13_stage_13;
    end


  //control_13, which is an e_mux
  assign p13_full_13 = ((read & !write) == 0)? full_12 :
    full_14;

  //control_reg_13, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_13 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_13 <= 0;
          else 
            full_13 <= p13_full_13;
    end


  //data_12, which is an e_mux
  assign p12_stage_12 = ((full_13 & ~clear_fifo) == 0)? data_in :
    stage_13;

  //data_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_12 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_12))
          if (sync_reset & full_12 & !((full_13 == 0) & read & write))
              stage_12 <= 0;
          else 
            stage_12 <= p12_stage_12;
    end


  //control_12, which is an e_mux
  assign p12_full_12 = ((read & !write) == 0)? full_11 :
    full_13;

  //control_reg_12, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_12 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_12 <= 0;
          else 
            full_12 <= p12_full_12;
    end


  //data_11, which is an e_mux
  assign p11_stage_11 = ((full_12 & ~clear_fifo) == 0)? data_in :
    stage_12;

  //data_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_11 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_11))
          if (sync_reset & full_11 & !((full_12 == 0) & read & write))
              stage_11 <= 0;
          else 
            stage_11 <= p11_stage_11;
    end


  //control_11, which is an e_mux
  assign p11_full_11 = ((read & !write) == 0)? full_10 :
    full_12;

  //control_reg_11, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_11 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_11 <= 0;
          else 
            full_11 <= p11_full_11;
    end


  //data_10, which is an e_mux
  assign p10_stage_10 = ((full_11 & ~clear_fifo) == 0)? data_in :
    stage_11;

  //data_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_10 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_10))
          if (sync_reset & full_10 & !((full_11 == 0) & read & write))
              stage_10 <= 0;
          else 
            stage_10 <= p10_stage_10;
    end


  //control_10, which is an e_mux
  assign p10_full_10 = ((read & !write) == 0)? full_9 :
    full_11;

  //control_reg_10, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_10 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_10 <= 0;
          else 
            full_10 <= p10_full_10;
    end


  //data_9, which is an e_mux
  assign p9_stage_9 = ((full_10 & ~clear_fifo) == 0)? data_in :
    stage_10;

  //data_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_9 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_9))
          if (sync_reset & full_9 & !((full_10 == 0) & read & write))
              stage_9 <= 0;
          else 
            stage_9 <= p9_stage_9;
    end


  //control_9, which is an e_mux
  assign p9_full_9 = ((read & !write) == 0)? full_8 :
    full_10;

  //control_reg_9, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_9 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_9 <= 0;
          else 
            full_9 <= p9_full_9;
    end


  //data_8, which is an e_mux
  assign p8_stage_8 = ((full_9 & ~clear_fifo) == 0)? data_in :
    stage_9;

  //data_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_8 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_8))
          if (sync_reset & full_8 & !((full_9 == 0) & read & write))
              stage_8 <= 0;
          else 
            stage_8 <= p8_stage_8;
    end


  //control_8, which is an e_mux
  assign p8_full_8 = ((read & !write) == 0)? full_7 :
    full_9;

  //control_reg_8, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_8 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_8 <= 0;
          else 
            full_8 <= p8_full_8;
    end


  //data_7, which is an e_mux
  assign p7_stage_7 = ((full_8 & ~clear_fifo) == 0)? data_in :
    stage_8;

  //data_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_7 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_7))
          if (sync_reset & full_7 & !((full_8 == 0) & read & write))
              stage_7 <= 0;
          else 
            stage_7 <= p7_stage_7;
    end


  //control_7, which is an e_mux
  assign p7_full_7 = ((read & !write) == 0)? full_6 :
    full_8;

  //control_reg_7, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_7 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_7 <= 0;
          else 
            full_7 <= p7_full_7;
    end


  //data_6, which is an e_mux
  assign p6_stage_6 = ((full_7 & ~clear_fifo) == 0)? data_in :
    stage_7;

  //data_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_6 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_6))
          if (sync_reset & full_6 & !((full_7 == 0) & read & write))
              stage_6 <= 0;
          else 
            stage_6 <= p6_stage_6;
    end


  //control_6, which is an e_mux
  assign p6_full_6 = ((read & !write) == 0)? full_5 :
    full_7;

  //control_reg_6, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_6 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_6 <= 0;
          else 
            full_6 <= p6_full_6;
    end


  //data_5, which is an e_mux
  assign p5_stage_5 = ((full_6 & ~clear_fifo) == 0)? data_in :
    stage_6;

  //data_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_5 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_5))
          if (sync_reset & full_5 & !((full_6 == 0) & read & write))
              stage_5 <= 0;
          else 
            stage_5 <= p5_stage_5;
    end


  //control_5, which is an e_mux
  assign p5_full_5 = ((read & !write) == 0)? full_4 :
    full_6;

  //control_reg_5, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_5 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_5 <= 0;
          else 
            full_5 <= p5_full_5;
    end


  //data_4, which is an e_mux
  assign p4_stage_4 = ((full_5 & ~clear_fifo) == 0)? data_in :
    stage_5;

  //data_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_4 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_4))
          if (sync_reset & full_4 & !((full_5 == 0) & read & write))
              stage_4 <= 0;
          else 
            stage_4 <= p4_stage_4;
    end


  //control_4, which is an e_mux
  assign p4_full_4 = ((read & !write) == 0)? full_3 :
    full_5;

  //control_reg_4, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_4 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_4 <= 0;
          else 
            full_4 <= p4_full_4;
    end


  //data_3, which is an e_mux
  assign p3_stage_3 = ((full_4 & ~clear_fifo) == 0)? data_in :
    stage_4;

  //data_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_3 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_3))
          if (sync_reset & full_3 & !((full_4 == 0) & read & write))
              stage_3 <= 0;
          else 
            stage_3 <= p3_stage_3;
    end


  //control_3, which is an e_mux
  assign p3_full_3 = ((read & !write) == 0)? full_2 :
    full_4;

  //control_reg_3, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_3 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_3 <= 0;
          else 
            full_3 <= p3_full_3;
    end


  //data_2, which is an e_mux
  assign p2_stage_2 = ((full_3 & ~clear_fifo) == 0)? data_in :
    stage_3;

  //data_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_2 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_2))
          if (sync_reset & full_2 & !((full_3 == 0) & read & write))
              stage_2 <= 0;
          else 
            stage_2 <= p2_stage_2;
    end


  //control_2, which is an e_mux
  assign p2_full_2 = ((read & !write) == 0)? full_1 :
    full_3;

  //control_reg_2, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_2 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_2 <= 0;
          else 
            full_2 <= p2_full_2;
    end


  //data_1, which is an e_mux
  assign p1_stage_1 = ((full_2 & ~clear_fifo) == 0)? data_in :
    stage_2;

  //data_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_1 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_1))
          if (sync_reset & full_1 & !((full_2 == 0) & read & write))
              stage_1 <= 0;
          else 
            stage_1 <= p1_stage_1;
    end


  //control_1, which is an e_mux
  assign p1_full_1 = ((read & !write) == 0)? full_0 :
    full_2;

  //control_reg_1, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_1 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo)
              full_1 <= 0;
          else 
            full_1 <= p1_full_1;
    end


  //data_0, which is an e_mux
  assign p0_stage_0 = ((full_1 & ~clear_fifo) == 0)? data_in :
    stage_1;

  //data_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          stage_0 <= 0;
      else if (clear_fifo | sync_reset | read | (write & !full_0))
          if (sync_reset & full_0 & !((full_1 == 0) & read & write))
              stage_0 <= 0;
          else 
            stage_0 <= p0_stage_0;
    end


  //control_0, which is an e_mux
  assign p0_full_0 = ((read & !write) == 0)? 1 :
    full_1;

  //control_reg_0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          full_0 <= 0;
      else if (clear_fifo | (read ^ write) | (write & !full_0))
          if (clear_fifo & ~write)
              full_0 <= 0;
          else 
            full_0 <= p0_full_0;
    end


  assign one_count_plus_one = how_many_ones + 1;
  assign one_count_minus_one = how_many_ones - 1;
  //updated_one_count, which is an e_mux
  assign updated_one_count = ((((clear_fifo | sync_reset) & !write)))? 0 :
    ((((clear_fifo | sync_reset) & write)))? |data_in :
    ((read & (|data_in) & write & (|stage_0)))? how_many_ones :
    ((write & (|data_in)))? one_count_plus_one :
    ((read & (|stage_0)))? one_count_minus_one :
    how_many_ones;

  //counts how many ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          how_many_ones <= 0;
      else if (clear_fifo | sync_reset | read | write)
          how_many_ones <= updated_one_count;
    end


  //this fifo contains ones in the data pipeline, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_contains_ones_n <= 1;
      else if (clear_fifo | sync_reset | read | write)
          fifo_contains_ones_n <= ~(|updated_one_count);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module clock_crossing_bridge_s1_arbitrator (
                                             // inputs:
                                              clk,
                                              clock_crossing_bridge_s1_endofpacket,
                                              clock_crossing_bridge_s1_readdata,
                                              clock_crossing_bridge_s1_readdatavalid,
                                              clock_crossing_bridge_s1_waitrequest,
                                              cpu_data_master_address_to_slave,
                                              cpu_data_master_byteenable,
                                              cpu_data_master_read,
                                              cpu_data_master_waitrequest,
                                              cpu_data_master_write,
                                              cpu_data_master_writedata,
                                              reset_n,

                                             // outputs:
                                              clock_crossing_bridge_s1_address,
                                              clock_crossing_bridge_s1_byteenable,
                                              clock_crossing_bridge_s1_endofpacket_from_sa,
                                              clock_crossing_bridge_s1_nativeaddress,
                                              clock_crossing_bridge_s1_read,
                                              clock_crossing_bridge_s1_readdata_from_sa,
                                              clock_crossing_bridge_s1_reset_n,
                                              clock_crossing_bridge_s1_waitrequest_from_sa,
                                              clock_crossing_bridge_s1_write,
                                              clock_crossing_bridge_s1_writedata,
                                              cpu_data_master_granted_clock_crossing_bridge_s1,
                                              cpu_data_master_qualified_request_clock_crossing_bridge_s1,
                                              cpu_data_master_read_data_valid_clock_crossing_bridge_s1,
                                              cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register,
                                              cpu_data_master_requests_clock_crossing_bridge_s1,
                                              d1_clock_crossing_bridge_s1_end_xfer
                                           )
;

  output  [  6: 0] clock_crossing_bridge_s1_address;
  output  [  3: 0] clock_crossing_bridge_s1_byteenable;
  output           clock_crossing_bridge_s1_endofpacket_from_sa;
  output  [  6: 0] clock_crossing_bridge_s1_nativeaddress;
  output           clock_crossing_bridge_s1_read;
  output  [ 31: 0] clock_crossing_bridge_s1_readdata_from_sa;
  output           clock_crossing_bridge_s1_reset_n;
  output           clock_crossing_bridge_s1_waitrequest_from_sa;
  output           clock_crossing_bridge_s1_write;
  output  [ 31: 0] clock_crossing_bridge_s1_writedata;
  output           cpu_data_master_granted_clock_crossing_bridge_s1;
  output           cpu_data_master_qualified_request_clock_crossing_bridge_s1;
  output           cpu_data_master_read_data_valid_clock_crossing_bridge_s1;
  output           cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register;
  output           cpu_data_master_requests_clock_crossing_bridge_s1;
  output           d1_clock_crossing_bridge_s1_end_xfer;
  input            clk;
  input            clock_crossing_bridge_s1_endofpacket;
  input   [ 31: 0] clock_crossing_bridge_s1_readdata;
  input            clock_crossing_bridge_s1_readdatavalid;
  input            clock_crossing_bridge_s1_waitrequest;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  6: 0] clock_crossing_bridge_s1_address;
  wire             clock_crossing_bridge_s1_allgrants;
  wire             clock_crossing_bridge_s1_allow_new_arb_cycle;
  wire             clock_crossing_bridge_s1_any_bursting_master_saved_grant;
  wire             clock_crossing_bridge_s1_any_continuerequest;
  wire             clock_crossing_bridge_s1_arb_counter_enable;
  reg              clock_crossing_bridge_s1_arb_share_counter;
  wire             clock_crossing_bridge_s1_arb_share_counter_next_value;
  wire             clock_crossing_bridge_s1_arb_share_set_values;
  wire             clock_crossing_bridge_s1_beginbursttransfer_internal;
  wire             clock_crossing_bridge_s1_begins_xfer;
  wire    [  3: 0] clock_crossing_bridge_s1_byteenable;
  wire             clock_crossing_bridge_s1_end_xfer;
  wire             clock_crossing_bridge_s1_endofpacket_from_sa;
  wire             clock_crossing_bridge_s1_firsttransfer;
  wire             clock_crossing_bridge_s1_grant_vector;
  wire             clock_crossing_bridge_s1_in_a_read_cycle;
  wire             clock_crossing_bridge_s1_in_a_write_cycle;
  wire             clock_crossing_bridge_s1_master_qreq_vector;
  wire             clock_crossing_bridge_s1_move_on_to_next_transaction;
  wire    [  6: 0] clock_crossing_bridge_s1_nativeaddress;
  wire             clock_crossing_bridge_s1_non_bursting_master_requests;
  wire             clock_crossing_bridge_s1_read;
  wire    [ 31: 0] clock_crossing_bridge_s1_readdata_from_sa;
  wire             clock_crossing_bridge_s1_readdatavalid_from_sa;
  reg              clock_crossing_bridge_s1_reg_firsttransfer;
  wire             clock_crossing_bridge_s1_reset_n;
  reg              clock_crossing_bridge_s1_slavearbiterlockenable;
  wire             clock_crossing_bridge_s1_slavearbiterlockenable2;
  wire             clock_crossing_bridge_s1_unreg_firsttransfer;
  wire             clock_crossing_bridge_s1_waitrequest_from_sa;
  wire             clock_crossing_bridge_s1_waits_for_read;
  wire             clock_crossing_bridge_s1_waits_for_write;
  wire             clock_crossing_bridge_s1_write;
  wire    [ 31: 0] clock_crossing_bridge_s1_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_clock_crossing_bridge_s1;
  wire             cpu_data_master_qualified_request_clock_crossing_bridge_s1;
  wire             cpu_data_master_rdv_fifo_empty_clock_crossing_bridge_s1;
  wire             cpu_data_master_rdv_fifo_output_from_clock_crossing_bridge_s1;
  wire             cpu_data_master_read_data_valid_clock_crossing_bridge_s1;
  wire             cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register;
  wire             cpu_data_master_requests_clock_crossing_bridge_s1;
  wire             cpu_data_master_saved_grant_clock_crossing_bridge_s1;
  reg              d1_clock_crossing_bridge_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_clock_crossing_bridge_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 24: 0] shifted_address_to_clock_crossing_bridge_s1_from_cpu_data_master;
  wire             wait_for_clock_crossing_bridge_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~clock_crossing_bridge_s1_end_xfer;
    end


  assign clock_crossing_bridge_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_clock_crossing_bridge_s1));
  //assign clock_crossing_bridge_s1_readdata_from_sa = clock_crossing_bridge_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign clock_crossing_bridge_s1_readdata_from_sa = clock_crossing_bridge_s1_readdata;

  assign cpu_data_master_requests_clock_crossing_bridge_s1 = ({cpu_data_master_address_to_slave[24 : 9] , 9'b0} == 25'h0) & (cpu_data_master_read | cpu_data_master_write);
  //assign clock_crossing_bridge_s1_waitrequest_from_sa = clock_crossing_bridge_s1_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign clock_crossing_bridge_s1_waitrequest_from_sa = clock_crossing_bridge_s1_waitrequest;

  //assign clock_crossing_bridge_s1_readdatavalid_from_sa = clock_crossing_bridge_s1_readdatavalid so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign clock_crossing_bridge_s1_readdatavalid_from_sa = clock_crossing_bridge_s1_readdatavalid;

  //clock_crossing_bridge_s1_arb_share_counter set values, which is an e_mux
  assign clock_crossing_bridge_s1_arb_share_set_values = 1;

  //clock_crossing_bridge_s1_non_bursting_master_requests mux, which is an e_mux
  assign clock_crossing_bridge_s1_non_bursting_master_requests = cpu_data_master_requests_clock_crossing_bridge_s1;

  //clock_crossing_bridge_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign clock_crossing_bridge_s1_any_bursting_master_saved_grant = 0;

  //clock_crossing_bridge_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign clock_crossing_bridge_s1_arb_share_counter_next_value = clock_crossing_bridge_s1_firsttransfer ? (clock_crossing_bridge_s1_arb_share_set_values - 1) : |clock_crossing_bridge_s1_arb_share_counter ? (clock_crossing_bridge_s1_arb_share_counter - 1) : 0;

  //clock_crossing_bridge_s1_allgrants all slave grants, which is an e_mux
  assign clock_crossing_bridge_s1_allgrants = |clock_crossing_bridge_s1_grant_vector;

  //clock_crossing_bridge_s1_end_xfer assignment, which is an e_assign
  assign clock_crossing_bridge_s1_end_xfer = ~(clock_crossing_bridge_s1_waits_for_read | clock_crossing_bridge_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_clock_crossing_bridge_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_clock_crossing_bridge_s1 = clock_crossing_bridge_s1_end_xfer & (~clock_crossing_bridge_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //clock_crossing_bridge_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign clock_crossing_bridge_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_clock_crossing_bridge_s1 & clock_crossing_bridge_s1_allgrants) | (end_xfer_arb_share_counter_term_clock_crossing_bridge_s1 & ~clock_crossing_bridge_s1_non_bursting_master_requests);

  //clock_crossing_bridge_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_s1_arb_share_counter <= 0;
      else if (clock_crossing_bridge_s1_arb_counter_enable)
          clock_crossing_bridge_s1_arb_share_counter <= clock_crossing_bridge_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_s1_slavearbiterlockenable <= 0;
      else if ((|clock_crossing_bridge_s1_master_qreq_vector & end_xfer_arb_share_counter_term_clock_crossing_bridge_s1) | (end_xfer_arb_share_counter_term_clock_crossing_bridge_s1 & ~clock_crossing_bridge_s1_non_bursting_master_requests))
          clock_crossing_bridge_s1_slavearbiterlockenable <= |clock_crossing_bridge_s1_arb_share_counter_next_value;
    end


  //cpu/data_master clock_crossing_bridge/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = clock_crossing_bridge_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //clock_crossing_bridge_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_s1_slavearbiterlockenable2 = |clock_crossing_bridge_s1_arb_share_counter_next_value;

  //cpu/data_master clock_crossing_bridge/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = clock_crossing_bridge_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //clock_crossing_bridge_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign clock_crossing_bridge_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_clock_crossing_bridge_s1 = cpu_data_master_requests_clock_crossing_bridge_s1 & ~((cpu_data_master_read & (~cpu_data_master_waitrequest | (|cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //unique name for clock_crossing_bridge_s1_move_on_to_next_transaction, which is an e_assign
  assign clock_crossing_bridge_s1_move_on_to_next_transaction = clock_crossing_bridge_s1_readdatavalid_from_sa;

  //rdv_fifo_for_cpu_data_master_to_clock_crossing_bridge_s1, which is an e_fifo_with_registered_outputs
  rdv_fifo_for_cpu_data_master_to_clock_crossing_bridge_s1_module rdv_fifo_for_cpu_data_master_to_clock_crossing_bridge_s1
    (
      .clear_fifo           (1'b0),
      .clk                  (clk),
      .data_in              (cpu_data_master_granted_clock_crossing_bridge_s1),
      .data_out             (cpu_data_master_rdv_fifo_output_from_clock_crossing_bridge_s1),
      .empty                (),
      .fifo_contains_ones_n (cpu_data_master_rdv_fifo_empty_clock_crossing_bridge_s1),
      .full                 (),
      .read                 (clock_crossing_bridge_s1_move_on_to_next_transaction),
      .reset_n              (reset_n),
      .sync_reset           (1'b0),
      .write                (in_a_read_cycle & ~clock_crossing_bridge_s1_waits_for_read)
    );

  assign cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register = ~cpu_data_master_rdv_fifo_empty_clock_crossing_bridge_s1;
  //local readdatavalid cpu_data_master_read_data_valid_clock_crossing_bridge_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_clock_crossing_bridge_s1 = clock_crossing_bridge_s1_readdatavalid_from_sa;

  //clock_crossing_bridge_s1_writedata mux, which is an e_mux
  assign clock_crossing_bridge_s1_writedata = cpu_data_master_writedata;

  //assign clock_crossing_bridge_s1_endofpacket_from_sa = clock_crossing_bridge_s1_endofpacket so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign clock_crossing_bridge_s1_endofpacket_from_sa = clock_crossing_bridge_s1_endofpacket;

  //master is always granted when requested
  assign cpu_data_master_granted_clock_crossing_bridge_s1 = cpu_data_master_qualified_request_clock_crossing_bridge_s1;

  //cpu/data_master saved-grant clock_crossing_bridge/s1, which is an e_assign
  assign cpu_data_master_saved_grant_clock_crossing_bridge_s1 = cpu_data_master_requests_clock_crossing_bridge_s1;

  //allow new arb cycle for clock_crossing_bridge/s1, which is an e_assign
  assign clock_crossing_bridge_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign clock_crossing_bridge_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign clock_crossing_bridge_s1_master_qreq_vector = 1;

  //clock_crossing_bridge_s1_reset_n assignment, which is an e_assign
  assign clock_crossing_bridge_s1_reset_n = reset_n;

  //clock_crossing_bridge_s1_firsttransfer first transaction, which is an e_assign
  assign clock_crossing_bridge_s1_firsttransfer = clock_crossing_bridge_s1_begins_xfer ? clock_crossing_bridge_s1_unreg_firsttransfer : clock_crossing_bridge_s1_reg_firsttransfer;

  //clock_crossing_bridge_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign clock_crossing_bridge_s1_unreg_firsttransfer = ~(clock_crossing_bridge_s1_slavearbiterlockenable & clock_crossing_bridge_s1_any_continuerequest);

  //clock_crossing_bridge_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_s1_reg_firsttransfer <= 1'b1;
      else if (clock_crossing_bridge_s1_begins_xfer)
          clock_crossing_bridge_s1_reg_firsttransfer <= clock_crossing_bridge_s1_unreg_firsttransfer;
    end


  //clock_crossing_bridge_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign clock_crossing_bridge_s1_beginbursttransfer_internal = clock_crossing_bridge_s1_begins_xfer;

  //clock_crossing_bridge_s1_read assignment, which is an e_mux
  assign clock_crossing_bridge_s1_read = cpu_data_master_granted_clock_crossing_bridge_s1 & cpu_data_master_read;

  //clock_crossing_bridge_s1_write assignment, which is an e_mux
  assign clock_crossing_bridge_s1_write = cpu_data_master_granted_clock_crossing_bridge_s1 & cpu_data_master_write;

  assign shifted_address_to_clock_crossing_bridge_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //clock_crossing_bridge_s1_address mux, which is an e_mux
  assign clock_crossing_bridge_s1_address = shifted_address_to_clock_crossing_bridge_s1_from_cpu_data_master >> 2;

  //slaveid clock_crossing_bridge_s1_nativeaddress nativeaddress mux, which is an e_mux
  assign clock_crossing_bridge_s1_nativeaddress = cpu_data_master_address_to_slave >> 2;

  //d1_clock_crossing_bridge_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_clock_crossing_bridge_s1_end_xfer <= 1;
      else 
        d1_clock_crossing_bridge_s1_end_xfer <= clock_crossing_bridge_s1_end_xfer;
    end


  //clock_crossing_bridge_s1_waits_for_read in a cycle, which is an e_mux
  assign clock_crossing_bridge_s1_waits_for_read = clock_crossing_bridge_s1_in_a_read_cycle & clock_crossing_bridge_s1_waitrequest_from_sa;

  //clock_crossing_bridge_s1_in_a_read_cycle assignment, which is an e_assign
  assign clock_crossing_bridge_s1_in_a_read_cycle = cpu_data_master_granted_clock_crossing_bridge_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = clock_crossing_bridge_s1_in_a_read_cycle;

  //clock_crossing_bridge_s1_waits_for_write in a cycle, which is an e_mux
  assign clock_crossing_bridge_s1_waits_for_write = clock_crossing_bridge_s1_in_a_write_cycle & clock_crossing_bridge_s1_waitrequest_from_sa;

  //clock_crossing_bridge_s1_in_a_write_cycle assignment, which is an e_assign
  assign clock_crossing_bridge_s1_in_a_write_cycle = cpu_data_master_granted_clock_crossing_bridge_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = clock_crossing_bridge_s1_in_a_write_cycle;

  assign wait_for_clock_crossing_bridge_s1_counter = 0;
  //clock_crossing_bridge_s1_byteenable byte enable port mux, which is an e_mux
  assign clock_crossing_bridge_s1_byteenable = (cpu_data_master_granted_clock_crossing_bridge_s1)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //clock_crossing_bridge/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module clock_crossing_bridge_m1_arbitrator (
                                             // inputs:
                                              clk,
                                              clock_crossing_bridge_m1_address,
                                              clock_crossing_bridge_m1_byteenable,
                                              clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1,
                                              clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1,
                                              clock_crossing_bridge_m1_granted_pio_button_s1,
                                              clock_crossing_bridge_m1_granted_pio_led_s1,
                                              clock_crossing_bridge_m1_granted_sysid_control_slave,
                                              clock_crossing_bridge_m1_granted_timer_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1,
                                              clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1,
                                              clock_crossing_bridge_m1_qualified_request_pio_button_s1,
                                              clock_crossing_bridge_m1_qualified_request_pio_led_s1,
                                              clock_crossing_bridge_m1_qualified_request_sysid_control_slave,
                                              clock_crossing_bridge_m1_qualified_request_timer_s1,
                                              clock_crossing_bridge_m1_read,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1,
                                              clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1,
                                              clock_crossing_bridge_m1_read_data_valid_pio_button_s1,
                                              clock_crossing_bridge_m1_read_data_valid_pio_led_s1,
                                              clock_crossing_bridge_m1_read_data_valid_sysid_control_slave,
                                              clock_crossing_bridge_m1_read_data_valid_timer_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1,
                                              clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1,
                                              clock_crossing_bridge_m1_requests_pio_button_s1,
                                              clock_crossing_bridge_m1_requests_pio_led_s1,
                                              clock_crossing_bridge_m1_requests_sysid_control_slave,
                                              clock_crossing_bridge_m1_requests_timer_s1,
                                              clock_crossing_bridge_m1_write,
                                              clock_crossing_bridge_m1_writedata,
                                              d1_hdmi_rx0_ep_scl_s1_end_xfer,
                                              d1_hdmi_rx0_ep_sda_s1_end_xfer,
                                              d1_hdmi_rx1_ep_scl_s1_end_xfer,
                                              d1_hdmi_rx1_ep_sda_s1_end_xfer,
                                              d1_hdmi_rx_cec_s1_end_xfer,
                                              d1_hdmi_rx_edid_wp_s1_end_xfer,
                                              d1_hdmi_rx_hpd_n_s1_end_xfer,
                                              d1_hdmi_rx_i2c_scl_s1_end_xfer,
                                              d1_hdmi_rx_i2c_sda_s1_end_xfer,
                                              d1_hdmi_rx_irq_n_s1_end_xfer,
                                              d1_hdmi_rx_reset_n_s1_end_xfer,
                                              d1_hdmi_rx_sync_s1_end_xfer,
                                              d1_hdmi_tx_disp_mode_s1_end_xfer,
                                              d1_hdmi_tx_i2c_scl_s1_end_xfer,
                                              d1_hdmi_tx_i2c_sda_s1_end_xfer,
                                              d1_hdmi_tx_irq_n_s1_end_xfer,
                                              d1_hdmi_tx_mode_change_s1_end_xfer,
                                              d1_hdmi_tx_reset_n_s1_end_xfer,
                                              d1_hdmi_tx_vpg_color_s1_end_xfer,
                                              d1_pio_button_s1_end_xfer,
                                              d1_pio_led_s1_end_xfer,
                                              d1_sysid_control_slave_end_xfer,
                                              d1_timer_s1_end_xfer,
                                              hdmi_rx0_ep_scl_s1_readdata_from_sa,
                                              hdmi_rx0_ep_sda_s1_readdata_from_sa,
                                              hdmi_rx1_ep_scl_s1_readdata_from_sa,
                                              hdmi_rx1_ep_sda_s1_readdata_from_sa,
                                              hdmi_rx_cec_s1_readdata_from_sa,
                                              hdmi_rx_edid_wp_s1_readdata_from_sa,
                                              hdmi_rx_hpd_n_s1_readdata_from_sa,
                                              hdmi_rx_i2c_scl_s1_readdata_from_sa,
                                              hdmi_rx_i2c_sda_s1_readdata_from_sa,
                                              hdmi_rx_irq_n_s1_readdata_from_sa,
                                              hdmi_rx_reset_n_s1_readdata_from_sa,
                                              hdmi_rx_sync_s1_readdata_from_sa,
                                              hdmi_tx_disp_mode_s1_readdata_from_sa,
                                              hdmi_tx_i2c_scl_s1_readdata_from_sa,
                                              hdmi_tx_i2c_sda_s1_readdata_from_sa,
                                              hdmi_tx_irq_n_s1_readdata_from_sa,
                                              hdmi_tx_mode_change_s1_readdata_from_sa,
                                              hdmi_tx_reset_n_s1_readdata_from_sa,
                                              hdmi_tx_vpg_color_s1_readdata_from_sa,
                                              pio_button_s1_readdata_from_sa,
                                              pio_led_s1_readdata_from_sa,
                                              reset_n,
                                              sysid_control_slave_readdata_from_sa,
                                              timer_s1_readdata_from_sa,

                                             // outputs:
                                              clock_crossing_bridge_m1_address_to_slave,
                                              clock_crossing_bridge_m1_latency_counter,
                                              clock_crossing_bridge_m1_readdata,
                                              clock_crossing_bridge_m1_readdatavalid,
                                              clock_crossing_bridge_m1_reset_n,
                                              clock_crossing_bridge_m1_waitrequest
                                           )
;

  output  [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  output           clock_crossing_bridge_m1_latency_counter;
  output  [ 31: 0] clock_crossing_bridge_m1_readdata;
  output           clock_crossing_bridge_m1_readdatavalid;
  output           clock_crossing_bridge_m1_reset_n;
  output           clock_crossing_bridge_m1_waitrequest;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address;
  input   [  3: 0] clock_crossing_bridge_m1_byteenable;
  input            clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1;
  input            clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1;
  input            clock_crossing_bridge_m1_granted_pio_button_s1;
  input            clock_crossing_bridge_m1_granted_pio_led_s1;
  input            clock_crossing_bridge_m1_granted_sysid_control_slave;
  input            clock_crossing_bridge_m1_granted_timer_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1;
  input            clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1;
  input            clock_crossing_bridge_m1_qualified_request_pio_button_s1;
  input            clock_crossing_bridge_m1_qualified_request_pio_led_s1;
  input            clock_crossing_bridge_m1_qualified_request_sysid_control_slave;
  input            clock_crossing_bridge_m1_qualified_request_timer_s1;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1;
  input            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1;
  input            clock_crossing_bridge_m1_read_data_valid_pio_button_s1;
  input            clock_crossing_bridge_m1_read_data_valid_pio_led_s1;
  input            clock_crossing_bridge_m1_read_data_valid_sysid_control_slave;
  input            clock_crossing_bridge_m1_read_data_valid_timer_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;
  input            clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;
  input            clock_crossing_bridge_m1_requests_pio_button_s1;
  input            clock_crossing_bridge_m1_requests_pio_led_s1;
  input            clock_crossing_bridge_m1_requests_sysid_control_slave;
  input            clock_crossing_bridge_m1_requests_timer_s1;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            d1_hdmi_rx0_ep_scl_s1_end_xfer;
  input            d1_hdmi_rx0_ep_sda_s1_end_xfer;
  input            d1_hdmi_rx1_ep_scl_s1_end_xfer;
  input            d1_hdmi_rx1_ep_sda_s1_end_xfer;
  input            d1_hdmi_rx_cec_s1_end_xfer;
  input            d1_hdmi_rx_edid_wp_s1_end_xfer;
  input            d1_hdmi_rx_hpd_n_s1_end_xfer;
  input            d1_hdmi_rx_i2c_scl_s1_end_xfer;
  input            d1_hdmi_rx_i2c_sda_s1_end_xfer;
  input            d1_hdmi_rx_irq_n_s1_end_xfer;
  input            d1_hdmi_rx_reset_n_s1_end_xfer;
  input            d1_hdmi_rx_sync_s1_end_xfer;
  input            d1_hdmi_tx_disp_mode_s1_end_xfer;
  input            d1_hdmi_tx_i2c_scl_s1_end_xfer;
  input            d1_hdmi_tx_i2c_sda_s1_end_xfer;
  input            d1_hdmi_tx_irq_n_s1_end_xfer;
  input            d1_hdmi_tx_mode_change_s1_end_xfer;
  input            d1_hdmi_tx_reset_n_s1_end_xfer;
  input            d1_hdmi_tx_vpg_color_s1_end_xfer;
  input            d1_pio_button_s1_end_xfer;
  input            d1_pio_led_s1_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            d1_timer_s1_end_xfer;
  input            hdmi_rx0_ep_scl_s1_readdata_from_sa;
  input            hdmi_rx0_ep_sda_s1_readdata_from_sa;
  input            hdmi_rx1_ep_scl_s1_readdata_from_sa;
  input            hdmi_rx1_ep_sda_s1_readdata_from_sa;
  input   [  1: 0] hdmi_rx_cec_s1_readdata_from_sa;
  input            hdmi_rx_edid_wp_s1_readdata_from_sa;
  input   [  1: 0] hdmi_rx_hpd_n_s1_readdata_from_sa;
  input            hdmi_rx_i2c_scl_s1_readdata_from_sa;
  input            hdmi_rx_i2c_sda_s1_readdata_from_sa;
  input            hdmi_rx_irq_n_s1_readdata_from_sa;
  input            hdmi_rx_reset_n_s1_readdata_from_sa;
  input            hdmi_rx_sync_s1_readdata_from_sa;
  input   [  3: 0] hdmi_tx_disp_mode_s1_readdata_from_sa;
  input            hdmi_tx_i2c_scl_s1_readdata_from_sa;
  input            hdmi_tx_i2c_sda_s1_readdata_from_sa;
  input            hdmi_tx_irq_n_s1_readdata_from_sa;
  input            hdmi_tx_mode_change_s1_readdata_from_sa;
  input            hdmi_tx_reset_n_s1_readdata_from_sa;
  input   [  1: 0] hdmi_tx_vpg_color_s1_readdata_from_sa;
  input   [  1: 0] pio_button_s1_readdata_from_sa;
  input   [  3: 0] pio_led_s1_readdata_from_sa;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;
  input   [ 15: 0] timer_s1_readdata_from_sa;

  reg              active_and_waiting_last_time;
  reg     [  8: 0] clock_crossing_bridge_m1_address_last_time;
  wire    [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  reg     [  3: 0] clock_crossing_bridge_m1_byteenable_last_time;
  wire             clock_crossing_bridge_m1_is_granted_some_slave;
  reg              clock_crossing_bridge_m1_latency_counter;
  reg              clock_crossing_bridge_m1_read_but_no_slave_selected;
  reg              clock_crossing_bridge_m1_read_last_time;
  wire    [ 31: 0] clock_crossing_bridge_m1_readdata;
  wire             clock_crossing_bridge_m1_readdatavalid;
  wire             clock_crossing_bridge_m1_reset_n;
  wire             clock_crossing_bridge_m1_run;
  wire             clock_crossing_bridge_m1_waitrequest;
  reg              clock_crossing_bridge_m1_write_last_time;
  reg     [ 31: 0] clock_crossing_bridge_m1_writedata_last_time;
  wire             latency_load_value;
  wire             p1_clock_crossing_bridge_m1_latency_counter;
  wire             pre_flush_clock_crossing_bridge_m1_readdatavalid;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  wire             r_3;
  wire             r_4;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx0_ep_scl_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx0_ep_sda_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx1_ep_scl_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx1_ep_sda_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_cec_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write)));

  //cascaded wait assignment, which is an e_assign
  assign clock_crossing_bridge_m1_run = r_0 & r_1 & r_2 & r_3 & r_4;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_edid_wp_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_hpd_n_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_i2c_scl_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_i2c_sda_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_irq_n_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write)));

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_reset_n_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 | ~clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_rx_sync_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_disp_mode_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_i2c_scl_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_i2c_sda_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write)));

  //r_3 master_run cascaded wait assignment, which is an e_assign
  assign r_3 = 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_irq_n_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_mode_change_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_reset_n_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 | ~clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_hdmi_tx_vpg_color_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_pio_button_s1 | ~clock_crossing_bridge_m1_requests_pio_button_s1) & ((~clock_crossing_bridge_m1_qualified_request_pio_button_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_pio_button_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_pio_button_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write)));

  //r_4 master_run cascaded wait assignment, which is an e_assign
  assign r_4 = 1 & (clock_crossing_bridge_m1_qualified_request_pio_led_s1 | ~clock_crossing_bridge_m1_requests_pio_led_s1) & ((~clock_crossing_bridge_m1_qualified_request_pio_led_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_pio_led_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_pio_led_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_sysid_control_slave | ~clock_crossing_bridge_m1_requests_sysid_control_slave) & ((~clock_crossing_bridge_m1_qualified_request_sysid_control_slave | ~clock_crossing_bridge_m1_read | (1 & ~d1_sysid_control_slave_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_sysid_control_slave | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write))) & 1 & (clock_crossing_bridge_m1_qualified_request_timer_s1 | ~clock_crossing_bridge_m1_requests_timer_s1) & ((~clock_crossing_bridge_m1_qualified_request_timer_s1 | ~clock_crossing_bridge_m1_read | (1 & ~d1_timer_s1_end_xfer & clock_crossing_bridge_m1_read))) & ((~clock_crossing_bridge_m1_qualified_request_timer_s1 | ~clock_crossing_bridge_m1_write | (1 & clock_crossing_bridge_m1_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign clock_crossing_bridge_m1_address_to_slave = clock_crossing_bridge_m1_address[8 : 0];

  //clock_crossing_bridge_m1_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_read_but_no_slave_selected <= 0;
      else 
        clock_crossing_bridge_m1_read_but_no_slave_selected <= clock_crossing_bridge_m1_read & clock_crossing_bridge_m1_run & ~clock_crossing_bridge_m1_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign clock_crossing_bridge_m1_is_granted_some_slave = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 |
    clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 |
    clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 |
    clock_crossing_bridge_m1_granted_pio_button_s1 |
    clock_crossing_bridge_m1_granted_pio_led_s1 |
    clock_crossing_bridge_m1_granted_sysid_control_slave |
    clock_crossing_bridge_m1_granted_timer_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_clock_crossing_bridge_m1_readdatavalid = 0;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign clock_crossing_bridge_m1_readdatavalid = clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_pio_button_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_pio_led_s1 |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_sysid_control_slave |
    clock_crossing_bridge_m1_read_but_no_slave_selected |
    pre_flush_clock_crossing_bridge_m1_readdatavalid |
    clock_crossing_bridge_m1_read_data_valid_timer_s1;

  //clock_crossing_bridge/m1 readdata mux, which is an e_mux
  assign clock_crossing_bridge_m1_readdata = ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx0_ep_scl_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx0_ep_sda_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx1_ep_scl_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx1_ep_sda_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_cec_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_edid_wp_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_hpd_n_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_i2c_scl_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_i2c_sda_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_irq_n_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_reset_n_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 & clock_crossing_bridge_m1_read)}} | hdmi_rx_sync_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_disp_mode_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_i2c_scl_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_i2c_sda_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_irq_n_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_mode_change_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_reset_n_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 & clock_crossing_bridge_m1_read)}} | hdmi_tx_vpg_color_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_pio_button_s1 & clock_crossing_bridge_m1_read)}} | pio_button_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_pio_led_s1 & clock_crossing_bridge_m1_read)}} | pio_led_s1_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_sysid_control_slave & clock_crossing_bridge_m1_read)}} | sysid_control_slave_readdata_from_sa) &
    ({32 {~(clock_crossing_bridge_m1_qualified_request_timer_s1 & clock_crossing_bridge_m1_read)}} | timer_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign clock_crossing_bridge_m1_waitrequest = ~clock_crossing_bridge_m1_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_latency_counter <= 0;
      else 
        clock_crossing_bridge_m1_latency_counter <= p1_clock_crossing_bridge_m1_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_clock_crossing_bridge_m1_latency_counter = ((clock_crossing_bridge_m1_run & clock_crossing_bridge_m1_read))? latency_load_value :
    (clock_crossing_bridge_m1_latency_counter)? clock_crossing_bridge_m1_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = 0;

  //clock_crossing_bridge_m1_reset_n assignment, which is an e_assign
  assign clock_crossing_bridge_m1_reset_n = reset_n;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //clock_crossing_bridge_m1_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_address_last_time <= 0;
      else 
        clock_crossing_bridge_m1_address_last_time <= clock_crossing_bridge_m1_address;
    end


  //clock_crossing_bridge/m1 waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= clock_crossing_bridge_m1_waitrequest & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
    end


  //clock_crossing_bridge_m1_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (clock_crossing_bridge_m1_address != clock_crossing_bridge_m1_address_last_time))
        begin
          $write("%0d ns: clock_crossing_bridge_m1_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //clock_crossing_bridge_m1_byteenable check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_byteenable_last_time <= 0;
      else 
        clock_crossing_bridge_m1_byteenable_last_time <= clock_crossing_bridge_m1_byteenable;
    end


  //clock_crossing_bridge_m1_byteenable matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (clock_crossing_bridge_m1_byteenable != clock_crossing_bridge_m1_byteenable_last_time))
        begin
          $write("%0d ns: clock_crossing_bridge_m1_byteenable did not heed wait!!!", $time);
          $stop;
        end
    end


  //clock_crossing_bridge_m1_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_read_last_time <= 0;
      else 
        clock_crossing_bridge_m1_read_last_time <= clock_crossing_bridge_m1_read;
    end


  //clock_crossing_bridge_m1_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (clock_crossing_bridge_m1_read != clock_crossing_bridge_m1_read_last_time))
        begin
          $write("%0d ns: clock_crossing_bridge_m1_read did not heed wait!!!", $time);
          $stop;
        end
    end


  //clock_crossing_bridge_m1_write check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_write_last_time <= 0;
      else 
        clock_crossing_bridge_m1_write_last_time <= clock_crossing_bridge_m1_write;
    end


  //clock_crossing_bridge_m1_write matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (clock_crossing_bridge_m1_write != clock_crossing_bridge_m1_write_last_time))
        begin
          $write("%0d ns: clock_crossing_bridge_m1_write did not heed wait!!!", $time);
          $stop;
        end
    end


  //clock_crossing_bridge_m1_writedata check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          clock_crossing_bridge_m1_writedata_last_time <= 0;
      else 
        clock_crossing_bridge_m1_writedata_last_time <= clock_crossing_bridge_m1_writedata;
    end


  //clock_crossing_bridge_m1_writedata matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (clock_crossing_bridge_m1_writedata != clock_crossing_bridge_m1_writedata_last_time) & clock_crossing_bridge_m1_write)
        begin
          $write("%0d ns: clock_crossing_bridge_m1_writedata did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module clock_crossing_bridge_bridge_arbitrator 
;



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_jtag_debug_module_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_data_master_address_to_slave,
                                           cpu_data_master_byteenable,
                                           cpu_data_master_debugaccess,
                                           cpu_data_master_read,
                                           cpu_data_master_waitrequest,
                                           cpu_data_master_write,
                                           cpu_data_master_writedata,
                                           cpu_instruction_master_address_to_slave,
                                           cpu_instruction_master_latency_counter,
                                           cpu_instruction_master_read,
                                           cpu_jtag_debug_module_readdata,
                                           cpu_jtag_debug_module_resetrequest,
                                           reset_n,

                                          // outputs:
                                           cpu_data_master_granted_cpu_jtag_debug_module,
                                           cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_data_master_requests_cpu_jtag_debug_module,
                                           cpu_instruction_master_granted_cpu_jtag_debug_module,
                                           cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_instruction_master_requests_cpu_jtag_debug_module,
                                           cpu_jtag_debug_module_address,
                                           cpu_jtag_debug_module_begintransfer,
                                           cpu_jtag_debug_module_byteenable,
                                           cpu_jtag_debug_module_chipselect,
                                           cpu_jtag_debug_module_debugaccess,
                                           cpu_jtag_debug_module_readdata_from_sa,
                                           cpu_jtag_debug_module_reset_n,
                                           cpu_jtag_debug_module_resetrequest_from_sa,
                                           cpu_jtag_debug_module_write,
                                           cpu_jtag_debug_module_writedata,
                                           d1_cpu_jtag_debug_module_end_xfer
                                        )
;

  output           cpu_data_master_granted_cpu_jtag_debug_module;
  output           cpu_data_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_data_master_requests_cpu_jtag_debug_module;
  output           cpu_instruction_master_granted_cpu_jtag_debug_module;
  output           cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_instruction_master_requests_cpu_jtag_debug_module;
  output  [  8: 0] cpu_jtag_debug_module_address;
  output           cpu_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_jtag_debug_module_byteenable;
  output           cpu_jtag_debug_module_chipselect;
  output           cpu_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  output           cpu_jtag_debug_module_reset_n;
  output           cpu_jtag_debug_module_resetrequest_from_sa;
  output           cpu_jtag_debug_module_write;
  output  [ 31: 0] cpu_jtag_debug_module_writedata;
  output           d1_cpu_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_debugaccess;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 24: 0] cpu_instruction_master_address_to_slave;
  input            cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] cpu_jtag_debug_module_readdata;
  input            cpu_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_saved_grant_cpu_jtag_debug_module;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_saved_grant_cpu_jtag_debug_module;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_allgrants;
  wire             cpu_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_jtag_debug_module_arb_addend;
  wire             cpu_jtag_debug_module_arb_counter_enable;
  reg              cpu_jtag_debug_module_arb_share_counter;
  wire             cpu_jtag_debug_module_arb_share_counter_next_value;
  wire             cpu_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_jtag_debug_module_arb_winner;
  wire             cpu_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_jtag_debug_module_begins_xfer;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_jtag_debug_module_debugaccess;
  wire             cpu_jtag_debug_module_end_xfer;
  wire             cpu_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_jtag_debug_module_grant_vector;
  wire             cpu_jtag_debug_module_in_a_read_cycle;
  wire             cpu_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_jtag_debug_module_master_qreq_vector;
  wire             cpu_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  reg              cpu_jtag_debug_module_reg_firsttransfer;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_jtag_debug_module_waits_for_read;
  wire             cpu_jtag_debug_module_waits_for_write;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  reg              d1_cpu_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
  reg              last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
  wire    [ 24: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master;
  wire    [ 24: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master;
  wire             wait_for_cpu_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu_jtag_debug_module_end_xfer;
    end


  assign cpu_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cpu_jtag_debug_module | cpu_instruction_master_qualified_request_cpu_jtag_debug_module));
  //assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata;

  assign cpu_data_master_requests_cpu_jtag_debug_module = ({cpu_data_master_address_to_slave[24 : 11] , 11'b0} == 25'h1040800) & (cpu_data_master_read | cpu_data_master_write);
  //cpu_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_jtag_debug_module_arb_share_set_values = 1;

  //cpu_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_jtag_debug_module_non_bursting_master_requests = cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module |
    cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_jtag_debug_module_arb_share_counter_next_value = cpu_jtag_debug_module_firsttransfer ? (cpu_jtag_debug_module_arb_share_set_values - 1) : |cpu_jtag_debug_module_arb_share_counter ? (cpu_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_jtag_debug_module_allgrants = (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector) |
    (|cpu_jtag_debug_module_grant_vector);

  //cpu_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_jtag_debug_module_end_xfer = ~(cpu_jtag_debug_module_waits_for_read | cpu_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_jtag_debug_module = cpu_jtag_debug_module_end_xfer & (~cpu_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & cpu_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests);

  //cpu_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_jtag_debug_module_arb_counter_enable)
          cpu_jtag_debug_module_arb_share_counter <= cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests))
          cpu_jtag_debug_module_slavearbiterlockenable <= |cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu/data_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_data_master_continuerequest;

  //cpu_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_jtag_debug_module_slavearbiterlockenable2 = |cpu_jtag_debug_module_arb_share_counter_next_value;

  //cpu/data_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= cpu_instruction_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module & cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_jtag_debug_module_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cpu_jtag_debug_module = cpu_data_master_requests_cpu_jtag_debug_module & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_jtag_debug_module_writedata = cpu_data_master_writedata;

  assign cpu_instruction_master_requests_cpu_jtag_debug_module = (({cpu_instruction_master_address_to_slave[24 : 11] , 11'b0} == 25'h1040800) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= cpu_data_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_data_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module & cpu_data_master_requests_cpu_jtag_debug_module;

  assign cpu_instruction_master_qualified_request_cpu_jtag_debug_module = cpu_instruction_master_requests_cpu_jtag_debug_module & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cpu_jtag_debug_module = cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cpu_jtag_debug_module;

  //cpu/instruction_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[0];

  //cpu/instruction_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[0] && cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu/data_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[1] = cpu_data_master_qualified_request_cpu_jtag_debug_module;

  //cpu/data_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[1];

  //cpu/data_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[1] && cpu_data_master_requests_cpu_jtag_debug_module;

  //cpu/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_double_vector = {cpu_jtag_debug_module_master_qreq_vector, cpu_jtag_debug_module_master_qreq_vector} & ({~cpu_jtag_debug_module_master_qreq_vector, ~cpu_jtag_debug_module_master_qreq_vector} + cpu_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_jtag_debug_module_arb_winner = (cpu_jtag_debug_module_allow_new_arb_cycle & | cpu_jtag_debug_module_grant_vector) ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_jtag_debug_module_allow_new_arb_cycle)
          cpu_jtag_debug_module_saved_chosen_master_vector <= |cpu_jtag_debug_module_grant_vector ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_jtag_debug_module_grant_vector = {(cpu_jtag_debug_module_chosen_master_double_vector[1] | cpu_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_jtag_debug_module_chosen_master_double_vector[0] | cpu_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_rot_left = (cpu_jtag_debug_module_arb_winner << 1) ? (cpu_jtag_debug_module_arb_winner << 1) : 1;

  //cpu/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_jtag_debug_module_grant_vector)
          cpu_jtag_debug_module_arb_addend <= cpu_jtag_debug_module_end_xfer? cpu_jtag_debug_module_chosen_master_rot_left : cpu_jtag_debug_module_grant_vector;
    end


  assign cpu_jtag_debug_module_begintransfer = cpu_jtag_debug_module_begins_xfer;
  //cpu_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_jtag_debug_module_reset_n = reset_n;

  //assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest;

  assign cpu_jtag_debug_module_chipselect = cpu_data_master_granted_cpu_jtag_debug_module | cpu_instruction_master_granted_cpu_jtag_debug_module;
  //cpu_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_firsttransfer = cpu_jtag_debug_module_begins_xfer ? cpu_jtag_debug_module_unreg_firsttransfer : cpu_jtag_debug_module_reg_firsttransfer;

  //cpu_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_unreg_firsttransfer = ~(cpu_jtag_debug_module_slavearbiterlockenable & cpu_jtag_debug_module_any_continuerequest);

  //cpu_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_jtag_debug_module_begins_xfer)
          cpu_jtag_debug_module_reg_firsttransfer <= cpu_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_jtag_debug_module_beginbursttransfer_internal = cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_jtag_debug_module_arbitration_holdoff_internal = cpu_jtag_debug_module_begins_xfer & cpu_jtag_debug_module_firsttransfer;

  //cpu_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_jtag_debug_module_write = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master = cpu_data_master_address_to_slave;
  //cpu_jtag_debug_module_address mux, which is an e_mux
  assign cpu_jtag_debug_module_address = (cpu_data_master_granted_cpu_jtag_debug_module)? (shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master >> 2) :
    (shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master >> 2);

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_cpu_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu_jtag_debug_module_end_xfer <= cpu_jtag_debug_module_end_xfer;
    end


  //cpu_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_read = cpu_jtag_debug_module_in_a_read_cycle & cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_read_cycle = (cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read) | (cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_jtag_debug_module_in_a_read_cycle;

  //cpu_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_write = cpu_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_write_cycle = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_jtag_debug_module_counter = 0;
  //cpu_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_jtag_debug_module_byteenable = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_jtag_debug_module_debugaccess = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cpu_jtag_debug_module + cpu_instruction_master_granted_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cpu_jtag_debug_module + cpu_instruction_master_saved_grant_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_irq_n_s1_irq_from_sa_clock_crossing_cpu_data_master_module (
                                                                            // inputs:
                                                                             clk,
                                                                             data_in,
                                                                             reset_n,

                                                                            // outputs:
                                                                             data_out
                                                                          )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pio_button_s1_irq_from_sa_clock_crossing_cpu_data_master_module (
                                                                         // inputs:
                                                                          clk,
                                                                          data_in,
                                                                          reset_n,

                                                                         // outputs:
                                                                          data_out
                                                                       )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_s1_irq_from_sa_clock_crossing_cpu_data_master_module (
                                                                    // inputs:
                                                                     clk,
                                                                     data_in,
                                                                     reset_n,

                                                                    // outputs:
                                                                     data_out
                                                                  )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_data_master_arbitrator (
                                    // inputs:
                                     DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa,
                                     DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa,
                                     clk,
                                     clock_crossing_bridge_s1_readdata_from_sa,
                                     clock_crossing_bridge_s1_waitrequest_from_sa,
                                     cpu_data_master_address,
                                     cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                     cpu_data_master_granted_clock_crossing_bridge_s1,
                                     cpu_data_master_granted_cpu_jtag_debug_module,
                                     cpu_data_master_granted_i2s_tx_slave,
                                     cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_granted_onchip_memory2_s1,
                                     cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                     cpu_data_master_qualified_request_clock_crossing_bridge_s1,
                                     cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                     cpu_data_master_qualified_request_i2s_tx_slave,
                                     cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_qualified_request_onchip_memory2_s1,
                                     cpu_data_master_read,
                                     cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                     cpu_data_master_read_data_valid_clock_crossing_bridge_s1,
                                     cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register,
                                     cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                     cpu_data_master_read_data_valid_i2s_tx_slave,
                                     cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_read_data_valid_onchip_memory2_s1,
                                     cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in,
                                     cpu_data_master_requests_clock_crossing_bridge_s1,
                                     cpu_data_master_requests_cpu_jtag_debug_module,
                                     cpu_data_master_requests_i2s_tx_slave,
                                     cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                     cpu_data_master_requests_onchip_memory2_s1,
                                     cpu_data_master_write,
                                     cpu_jtag_debug_module_readdata_from_sa,
                                     d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer,
                                     d1_clock_crossing_bridge_s1_end_xfer,
                                     d1_cpu_jtag_debug_module_end_xfer,
                                     d1_i2s_tx_slave_end_xfer,
                                     d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                     d1_onchip_memory2_s1_end_xfer,
                                     hdmi_tx_irq_n_s1_irq_from_sa,
                                     i2s_tx_slave_irq_from_sa,
                                     i2s_tx_slave_readdata_from_sa,
                                     jtag_uart_avalon_jtag_slave_irq_from_sa,
                                     jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                     jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                     onchip_memory2_s1_readdata_from_sa,
                                     pio_button_s1_irq_from_sa,
                                     pll_cpu,
                                     pll_cpu_reset_n,
                                     registered_cpu_data_master_read_data_valid_onchip_memory2_s1,
                                     reset_n,
                                     timer_s1_irq_from_sa,

                                    // outputs:
                                     cpu_data_master_address_to_slave,
                                     cpu_data_master_irq,
                                     cpu_data_master_readdata,
                                     cpu_data_master_waitrequest
                                  )
;

  output  [ 24: 0] cpu_data_master_address_to_slave;
  output  [ 31: 0] cpu_data_master_irq;
  output  [ 31: 0] cpu_data_master_readdata;
  output           cpu_data_master_waitrequest;
  input   [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa;
  input            DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;
  input            clk;
  input   [ 31: 0] clock_crossing_bridge_s1_readdata_from_sa;
  input            clock_crossing_bridge_s1_waitrequest_from_sa;
  input   [ 24: 0] cpu_data_master_address;
  input            cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in;
  input            cpu_data_master_granted_clock_crossing_bridge_s1;
  input            cpu_data_master_granted_cpu_jtag_debug_module;
  input            cpu_data_master_granted_i2s_tx_slave;
  input            cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_granted_onchip_memory2_s1;
  input            cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in;
  input            cpu_data_master_qualified_request_clock_crossing_bridge_s1;
  input            cpu_data_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_data_master_qualified_request_i2s_tx_slave;
  input            cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_qualified_request_onchip_memory2_s1;
  input            cpu_data_master_read;
  input            cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in;
  input            cpu_data_master_read_data_valid_clock_crossing_bridge_s1;
  input            cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register;
  input            cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_data_master_read_data_valid_i2s_tx_slave;
  input            cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_read_data_valid_onchip_memory2_s1;
  input            cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;
  input            cpu_data_master_requests_clock_crossing_bridge_s1;
  input            cpu_data_master_requests_cpu_jtag_debug_module;
  input            cpu_data_master_requests_i2s_tx_slave;
  input            cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  input            cpu_data_master_requests_onchip_memory2_s1;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
  input            d1_clock_crossing_bridge_s1_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_i2s_tx_slave_end_xfer;
  input            d1_jtag_uart_avalon_jtag_slave_end_xfer;
  input            d1_onchip_memory2_s1_end_xfer;
  input            hdmi_tx_irq_n_s1_irq_from_sa;
  input            i2s_tx_slave_irq_from_sa;
  input   [ 31: 0] i2s_tx_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  input            jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  input   [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  input            pio_button_s1_irq_from_sa;
  input            pll_cpu;
  input            pll_cpu_reset_n;
  input            registered_cpu_data_master_read_data_valid_onchip_memory2_s1;
  input            reset_n;
  input            timer_s1_irq_from_sa;

  wire    [ 24: 0] cpu_data_master_address_to_slave;
  wire    [ 31: 0] cpu_data_master_irq;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_run;
  reg              cpu_data_master_waitrequest;
  wire    [ 31: 0] p1_registered_cpu_data_master_readdata;
  wire             pll_cpu_hdmi_tx_irq_n_s1_irq_from_sa;
  wire             pll_cpu_pio_button_s1_irq_from_sa;
  wire             pll_cpu_timer_s1_irq_from_sa;
  wire             r_0;
  wire             r_3;
  reg     [ 31: 0] registered_cpu_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in | ~cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in) & ((~cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_clock_crossing_bridge_s1 | cpu_data_master_read_data_valid_clock_crossing_bridge_s1 | ~cpu_data_master_requests_clock_crossing_bridge_s1) & ((~cpu_data_master_qualified_request_clock_crossing_bridge_s1 | ~cpu_data_master_read | (cpu_data_master_read_data_valid_clock_crossing_bridge_s1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_clock_crossing_bridge_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~clock_crossing_bridge_s1_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_requests_cpu_jtag_debug_module) & (cpu_data_master_granted_cpu_jtag_debug_module | ~cpu_data_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_write | (1 & cpu_data_master_write)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_data_master_run = r_0 & r_3;

  //r_3 master_run cascaded wait assignment, which is an e_assign
  assign r_3 = 1 & (cpu_data_master_qualified_request_i2s_tx_slave | ~cpu_data_master_requests_i2s_tx_slave) & ((~cpu_data_master_qualified_request_i2s_tx_slave | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_i2s_tx_slave | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~cpu_data_master_requests_jtag_uart_avalon_jtag_slave) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~jtag_uart_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_onchip_memory2_s1 | registered_cpu_data_master_read_data_valid_onchip_memory2_s1 | ~cpu_data_master_requests_onchip_memory2_s1) & (cpu_data_master_granted_onchip_memory2_s1 | ~cpu_data_master_qualified_request_onchip_memory2_s1) & ((~cpu_data_master_qualified_request_onchip_memory2_s1 | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_onchip_memory2_s1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_onchip_memory2_s1 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write))));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_data_master_address_to_slave = {cpu_data_master_address[24],
    5'b0,
    cpu_data_master_address[18 : 0]};

  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_cpu_data_master_readdata <= 0;
      else 
        registered_cpu_data_master_readdata <= p1_registered_cpu_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_cpu_data_master_readdata = ({32 {~cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in}} | DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_clock_crossing_bridge_s1}} | clock_crossing_bridge_s1_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_jtag_uart_avalon_jtag_slave}} | jtag_uart_avalon_jtag_slave_readdata_from_sa);

  //cpu/data_master readdata mux, which is an e_mux
  assign cpu_data_master_readdata = ({32 {~cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in}} | registered_cpu_data_master_readdata) &
    ({32 {~cpu_data_master_requests_clock_crossing_bridge_s1}} | registered_cpu_data_master_readdata) &
    ({32 {~cpu_data_master_requests_cpu_jtag_debug_module}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_i2s_tx_slave}} | i2s_tx_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_jtag_uart_avalon_jtag_slave}} | registered_cpu_data_master_readdata) &
    ({32 {~cpu_data_master_requests_onchip_memory2_s1}} | onchip_memory2_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_waitrequest <= ~0;
      else 
        cpu_data_master_waitrequest <= ~((~(cpu_data_master_read | cpu_data_master_write))? 0: (cpu_data_master_run & cpu_data_master_waitrequest));
    end


  //hdmi_tx_irq_n_s1_irq_from_sa from pll_io to pll_cpu
  hdmi_tx_irq_n_s1_irq_from_sa_clock_crossing_cpu_data_master_module hdmi_tx_irq_n_s1_irq_from_sa_clock_crossing_cpu_data_master
    (
      .clk      (pll_cpu),
      .data_in  (hdmi_tx_irq_n_s1_irq_from_sa),
      .data_out (pll_cpu_hdmi_tx_irq_n_s1_irq_from_sa),
      .reset_n  (pll_cpu_reset_n)
    );

  //irq assign, which is an e_assign
  assign cpu_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    pll_cpu_pio_button_s1_irq_from_sa,
    pll_cpu_hdmi_tx_irq_n_s1_irq_from_sa,
    pll_cpu_timer_s1_irq_from_sa,
    i2s_tx_slave_irq_from_sa,
    jtag_uart_avalon_jtag_slave_irq_from_sa};

  //pio_button_s1_irq_from_sa from pll_io to pll_cpu
  pio_button_s1_irq_from_sa_clock_crossing_cpu_data_master_module pio_button_s1_irq_from_sa_clock_crossing_cpu_data_master
    (
      .clk      (pll_cpu),
      .data_in  (pio_button_s1_irq_from_sa),
      .data_out (pll_cpu_pio_button_s1_irq_from_sa),
      .reset_n  (pll_cpu_reset_n)
    );

  //timer_s1_irq_from_sa from pll_io to pll_cpu
  timer_s1_irq_from_sa_clock_crossing_cpu_data_master_module timer_s1_irq_from_sa_clock_crossing_cpu_data_master
    (
      .clk      (pll_cpu),
      .data_in  (timer_s1_irq_from_sa),
      .data_out (pll_cpu_timer_s1_irq_from_sa),
      .reset_n  (pll_cpu_reset_n)
    );


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_instruction_master_arbitrator (
                                           // inputs:
                                            clk,
                                            cpu_instruction_master_address,
                                            cpu_instruction_master_granted_cpu_jtag_debug_module,
                                            cpu_instruction_master_granted_onchip_memory2_s1,
                                            cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                            cpu_instruction_master_qualified_request_onchip_memory2_s1,
                                            cpu_instruction_master_read,
                                            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                            cpu_instruction_master_read_data_valid_onchip_memory2_s1,
                                            cpu_instruction_master_requests_cpu_jtag_debug_module,
                                            cpu_instruction_master_requests_onchip_memory2_s1,
                                            cpu_jtag_debug_module_readdata_from_sa,
                                            d1_cpu_jtag_debug_module_end_xfer,
                                            d1_onchip_memory2_s1_end_xfer,
                                            onchip_memory2_s1_readdata_from_sa,
                                            reset_n,

                                           // outputs:
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_readdata,
                                            cpu_instruction_master_readdatavalid,
                                            cpu_instruction_master_waitrequest
                                         )
;

  output  [ 24: 0] cpu_instruction_master_address_to_slave;
  output           cpu_instruction_master_latency_counter;
  output  [ 31: 0] cpu_instruction_master_readdata;
  output           cpu_instruction_master_readdatavalid;
  output           cpu_instruction_master_waitrequest;
  input            clk;
  input   [ 24: 0] cpu_instruction_master_address;
  input            cpu_instruction_master_granted_cpu_jtag_debug_module;
  input            cpu_instruction_master_granted_onchip_memory2_s1;
  input            cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_instruction_master_qualified_request_onchip_memory2_s1;
  input            cpu_instruction_master_read;
  input            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_instruction_master_read_data_valid_onchip_memory2_s1;
  input            cpu_instruction_master_requests_cpu_jtag_debug_module;
  input            cpu_instruction_master_requests_onchip_memory2_s1;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_onchip_memory2_s1_end_xfer;
  input   [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 24: 0] cpu_instruction_master_address_last_time;
  wire    [ 24: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_is_granted_some_slave;
  reg              cpu_instruction_master_latency_counter;
  reg              cpu_instruction_master_read_but_no_slave_selected;
  reg              cpu_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_run;
  wire             cpu_instruction_master_waitrequest;
  wire             latency_load_value;
  wire             p1_cpu_instruction_master_latency_counter;
  wire             pre_flush_cpu_instruction_master_readdatavalid;
  wire             r_0;
  wire             r_3;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_requests_cpu_jtag_debug_module) & (cpu_instruction_master_granted_cpu_jtag_debug_module | ~cpu_instruction_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_instruction_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_instruction_master_run = r_0 & r_3;

  //r_3 master_run cascaded wait assignment, which is an e_assign
  assign r_3 = 1 & (cpu_instruction_master_qualified_request_onchip_memory2_s1 | ~cpu_instruction_master_requests_onchip_memory2_s1) & (cpu_instruction_master_granted_onchip_memory2_s1 | ~cpu_instruction_master_qualified_request_onchip_memory2_s1) & ((~cpu_instruction_master_qualified_request_onchip_memory2_s1 | ~cpu_instruction_master_read | (1 & cpu_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_instruction_master_address_to_slave = {6'b100000,
    cpu_instruction_master_address[18 : 0]};

  //cpu_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu_instruction_master_read_but_no_slave_selected <= cpu_instruction_master_read & cpu_instruction_master_run & ~cpu_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_instruction_master_is_granted_some_slave = cpu_instruction_master_granted_cpu_jtag_debug_module |
    cpu_instruction_master_granted_onchip_memory2_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_instruction_master_readdatavalid = cpu_instruction_master_read_data_valid_onchip_memory2_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_instruction_master_readdatavalid = cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_cpu_jtag_debug_module |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid;

  //cpu/instruction_master readdata mux, which is an e_mux
  assign cpu_instruction_master_readdata = ({32 {~(cpu_instruction_master_qualified_request_cpu_jtag_debug_module & cpu_instruction_master_read)}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_onchip_memory2_s1}} | onchip_memory2_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign cpu_instruction_master_waitrequest = ~cpu_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_latency_counter <= 0;
      else 
        cpu_instruction_master_latency_counter <= p1_cpu_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_instruction_master_latency_counter = ((cpu_instruction_master_run & cpu_instruction_master_read))? latency_load_value :
    (cpu_instruction_master_latency_counter)? cpu_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {1 {cpu_instruction_master_requests_onchip_memory2_s1}} & 1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_address_last_time <= 0;
      else 
        cpu_instruction_master_address_last_time <= cpu_instruction_master_address;
    end


  //cpu/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_instruction_master_waitrequest & (cpu_instruction_master_read);
    end


  //cpu_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_address != cpu_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_last_time <= 0;
      else 
        cpu_instruction_master_read_last_time <= cpu_instruction_master_read;
    end


  //cpu_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_read != cpu_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx0_ep_scl_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx0_ep_scl_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1,
                                        d1_hdmi_rx0_ep_scl_s1_end_xfer,
                                        hdmi_rx0_ep_scl_s1_address,
                                        hdmi_rx0_ep_scl_s1_chipselect,
                                        hdmi_rx0_ep_scl_s1_readdata_from_sa,
                                        hdmi_rx0_ep_scl_s1_reset_n,
                                        hdmi_rx0_ep_scl_s1_write_n,
                                        hdmi_rx0_ep_scl_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;
  output           d1_hdmi_rx0_ep_scl_s1_end_xfer;
  output  [  1: 0] hdmi_rx0_ep_scl_s1_address;
  output           hdmi_rx0_ep_scl_s1_chipselect;
  output           hdmi_rx0_ep_scl_s1_readdata_from_sa;
  output           hdmi_rx0_ep_scl_s1_reset_n;
  output           hdmi_rx0_ep_scl_s1_write_n;
  output           hdmi_rx0_ep_scl_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx0_ep_scl_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx0_ep_scl_s1;
  reg              d1_hdmi_rx0_ep_scl_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1;
  wire    [  1: 0] hdmi_rx0_ep_scl_s1_address;
  wire             hdmi_rx0_ep_scl_s1_allgrants;
  wire             hdmi_rx0_ep_scl_s1_allow_new_arb_cycle;
  wire             hdmi_rx0_ep_scl_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx0_ep_scl_s1_any_continuerequest;
  wire             hdmi_rx0_ep_scl_s1_arb_counter_enable;
  reg              hdmi_rx0_ep_scl_s1_arb_share_counter;
  wire             hdmi_rx0_ep_scl_s1_arb_share_counter_next_value;
  wire             hdmi_rx0_ep_scl_s1_arb_share_set_values;
  wire             hdmi_rx0_ep_scl_s1_beginbursttransfer_internal;
  wire             hdmi_rx0_ep_scl_s1_begins_xfer;
  wire             hdmi_rx0_ep_scl_s1_chipselect;
  wire             hdmi_rx0_ep_scl_s1_end_xfer;
  wire             hdmi_rx0_ep_scl_s1_firsttransfer;
  wire             hdmi_rx0_ep_scl_s1_grant_vector;
  wire             hdmi_rx0_ep_scl_s1_in_a_read_cycle;
  wire             hdmi_rx0_ep_scl_s1_in_a_write_cycle;
  wire             hdmi_rx0_ep_scl_s1_master_qreq_vector;
  wire             hdmi_rx0_ep_scl_s1_non_bursting_master_requests;
  wire             hdmi_rx0_ep_scl_s1_readdata_from_sa;
  reg              hdmi_rx0_ep_scl_s1_reg_firsttransfer;
  wire             hdmi_rx0_ep_scl_s1_reset_n;
  reg              hdmi_rx0_ep_scl_s1_slavearbiterlockenable;
  wire             hdmi_rx0_ep_scl_s1_slavearbiterlockenable2;
  wire             hdmi_rx0_ep_scl_s1_unreg_firsttransfer;
  wire             hdmi_rx0_ep_scl_s1_waits_for_read;
  wire             hdmi_rx0_ep_scl_s1_waits_for_write;
  wire             hdmi_rx0_ep_scl_s1_write_n;
  wire             hdmi_rx0_ep_scl_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx0_ep_scl_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx0_ep_scl_s1_end_xfer;
    end


  assign hdmi_rx0_ep_scl_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1));
  //assign hdmi_rx0_ep_scl_s1_readdata_from_sa = hdmi_rx0_ep_scl_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_readdata_from_sa = hdmi_rx0_ep_scl_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'he0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx0_ep_scl_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_arb_share_set_values = 1;

  //hdmi_rx0_ep_scl_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;

  //hdmi_rx0_ep_scl_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx0_ep_scl_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_arb_share_counter_next_value = hdmi_rx0_ep_scl_s1_firsttransfer ? (hdmi_rx0_ep_scl_s1_arb_share_set_values - 1) : |hdmi_rx0_ep_scl_s1_arb_share_counter ? (hdmi_rx0_ep_scl_s1_arb_share_counter - 1) : 0;

  //hdmi_rx0_ep_scl_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_allgrants = |hdmi_rx0_ep_scl_s1_grant_vector;

  //hdmi_rx0_ep_scl_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_end_xfer = ~(hdmi_rx0_ep_scl_s1_waits_for_read | hdmi_rx0_ep_scl_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1 = hdmi_rx0_ep_scl_s1_end_xfer & (~hdmi_rx0_ep_scl_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx0_ep_scl_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1 & hdmi_rx0_ep_scl_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1 & ~hdmi_rx0_ep_scl_s1_non_bursting_master_requests);

  //hdmi_rx0_ep_scl_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_scl_s1_arb_share_counter <= 0;
      else if (hdmi_rx0_ep_scl_s1_arb_counter_enable)
          hdmi_rx0_ep_scl_s1_arb_share_counter <= hdmi_rx0_ep_scl_s1_arb_share_counter_next_value;
    end


  //hdmi_rx0_ep_scl_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_scl_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx0_ep_scl_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1) | (end_xfer_arb_share_counter_term_hdmi_rx0_ep_scl_s1 & ~hdmi_rx0_ep_scl_s1_non_bursting_master_requests))
          hdmi_rx0_ep_scl_s1_slavearbiterlockenable <= |hdmi_rx0_ep_scl_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx0_ep_scl/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx0_ep_scl_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx0_ep_scl_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_slavearbiterlockenable2 = |hdmi_rx0_ep_scl_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx0_ep_scl/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx0_ep_scl_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx0_ep_scl_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1 = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx0_ep_scl_s1_waits_for_read;

  //hdmi_rx0_ep_scl_s1_writedata mux, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx0_ep_scl/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx0_ep_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;

  //allow new arb cycle for hdmi_rx0_ep_scl/s1, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx0_ep_scl_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx0_ep_scl_s1_master_qreq_vector = 1;

  //hdmi_rx0_ep_scl_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_reset_n = reset_n;

  assign hdmi_rx0_ep_scl_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1;
  //hdmi_rx0_ep_scl_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_firsttransfer = hdmi_rx0_ep_scl_s1_begins_xfer ? hdmi_rx0_ep_scl_s1_unreg_firsttransfer : hdmi_rx0_ep_scl_s1_reg_firsttransfer;

  //hdmi_rx0_ep_scl_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_unreg_firsttransfer = ~(hdmi_rx0_ep_scl_s1_slavearbiterlockenable & hdmi_rx0_ep_scl_s1_any_continuerequest);

  //hdmi_rx0_ep_scl_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_scl_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx0_ep_scl_s1_begins_xfer)
          hdmi_rx0_ep_scl_s1_reg_firsttransfer <= hdmi_rx0_ep_scl_s1_unreg_firsttransfer;
    end


  //hdmi_rx0_ep_scl_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_beginbursttransfer_internal = hdmi_rx0_ep_scl_s1_begins_xfer;

  //~hdmi_rx0_ep_scl_s1_write_n assignment, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx0_ep_scl_s1_address mux, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx0_ep_scl_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx0_ep_scl_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx0_ep_scl_s1_end_xfer <= hdmi_rx0_ep_scl_s1_end_xfer;
    end


  //hdmi_rx0_ep_scl_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_waits_for_read = hdmi_rx0_ep_scl_s1_in_a_read_cycle & hdmi_rx0_ep_scl_s1_begins_xfer;

  //hdmi_rx0_ep_scl_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx0_ep_scl_s1_in_a_read_cycle;

  //hdmi_rx0_ep_scl_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx0_ep_scl_s1_waits_for_write = hdmi_rx0_ep_scl_s1_in_a_write_cycle & 0;

  //hdmi_rx0_ep_scl_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx0_ep_scl_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx0_ep_scl_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx0_ep_scl_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx0_ep_scl/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx0_ep_sda_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx0_ep_sda_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1,
                                        d1_hdmi_rx0_ep_sda_s1_end_xfer,
                                        hdmi_rx0_ep_sda_s1_address,
                                        hdmi_rx0_ep_sda_s1_chipselect,
                                        hdmi_rx0_ep_sda_s1_readdata_from_sa,
                                        hdmi_rx0_ep_sda_s1_reset_n,
                                        hdmi_rx0_ep_sda_s1_write_n,
                                        hdmi_rx0_ep_sda_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;
  output           d1_hdmi_rx0_ep_sda_s1_end_xfer;
  output  [  1: 0] hdmi_rx0_ep_sda_s1_address;
  output           hdmi_rx0_ep_sda_s1_chipselect;
  output           hdmi_rx0_ep_sda_s1_readdata_from_sa;
  output           hdmi_rx0_ep_sda_s1_reset_n;
  output           hdmi_rx0_ep_sda_s1_write_n;
  output           hdmi_rx0_ep_sda_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx0_ep_sda_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx0_ep_sda_s1;
  reg              d1_hdmi_rx0_ep_sda_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1;
  wire    [  1: 0] hdmi_rx0_ep_sda_s1_address;
  wire             hdmi_rx0_ep_sda_s1_allgrants;
  wire             hdmi_rx0_ep_sda_s1_allow_new_arb_cycle;
  wire             hdmi_rx0_ep_sda_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx0_ep_sda_s1_any_continuerequest;
  wire             hdmi_rx0_ep_sda_s1_arb_counter_enable;
  reg              hdmi_rx0_ep_sda_s1_arb_share_counter;
  wire             hdmi_rx0_ep_sda_s1_arb_share_counter_next_value;
  wire             hdmi_rx0_ep_sda_s1_arb_share_set_values;
  wire             hdmi_rx0_ep_sda_s1_beginbursttransfer_internal;
  wire             hdmi_rx0_ep_sda_s1_begins_xfer;
  wire             hdmi_rx0_ep_sda_s1_chipselect;
  wire             hdmi_rx0_ep_sda_s1_end_xfer;
  wire             hdmi_rx0_ep_sda_s1_firsttransfer;
  wire             hdmi_rx0_ep_sda_s1_grant_vector;
  wire             hdmi_rx0_ep_sda_s1_in_a_read_cycle;
  wire             hdmi_rx0_ep_sda_s1_in_a_write_cycle;
  wire             hdmi_rx0_ep_sda_s1_master_qreq_vector;
  wire             hdmi_rx0_ep_sda_s1_non_bursting_master_requests;
  wire             hdmi_rx0_ep_sda_s1_readdata_from_sa;
  reg              hdmi_rx0_ep_sda_s1_reg_firsttransfer;
  wire             hdmi_rx0_ep_sda_s1_reset_n;
  reg              hdmi_rx0_ep_sda_s1_slavearbiterlockenable;
  wire             hdmi_rx0_ep_sda_s1_slavearbiterlockenable2;
  wire             hdmi_rx0_ep_sda_s1_unreg_firsttransfer;
  wire             hdmi_rx0_ep_sda_s1_waits_for_read;
  wire             hdmi_rx0_ep_sda_s1_waits_for_write;
  wire             hdmi_rx0_ep_sda_s1_write_n;
  wire             hdmi_rx0_ep_sda_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx0_ep_sda_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx0_ep_sda_s1_end_xfer;
    end


  assign hdmi_rx0_ep_sda_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1));
  //assign hdmi_rx0_ep_sda_s1_readdata_from_sa = hdmi_rx0_ep_sda_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_readdata_from_sa = hdmi_rx0_ep_sda_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'hf0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx0_ep_sda_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_arb_share_set_values = 1;

  //hdmi_rx0_ep_sda_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;

  //hdmi_rx0_ep_sda_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx0_ep_sda_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_arb_share_counter_next_value = hdmi_rx0_ep_sda_s1_firsttransfer ? (hdmi_rx0_ep_sda_s1_arb_share_set_values - 1) : |hdmi_rx0_ep_sda_s1_arb_share_counter ? (hdmi_rx0_ep_sda_s1_arb_share_counter - 1) : 0;

  //hdmi_rx0_ep_sda_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_allgrants = |hdmi_rx0_ep_sda_s1_grant_vector;

  //hdmi_rx0_ep_sda_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_end_xfer = ~(hdmi_rx0_ep_sda_s1_waits_for_read | hdmi_rx0_ep_sda_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1 = hdmi_rx0_ep_sda_s1_end_xfer & (~hdmi_rx0_ep_sda_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx0_ep_sda_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1 & hdmi_rx0_ep_sda_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1 & ~hdmi_rx0_ep_sda_s1_non_bursting_master_requests);

  //hdmi_rx0_ep_sda_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_sda_s1_arb_share_counter <= 0;
      else if (hdmi_rx0_ep_sda_s1_arb_counter_enable)
          hdmi_rx0_ep_sda_s1_arb_share_counter <= hdmi_rx0_ep_sda_s1_arb_share_counter_next_value;
    end


  //hdmi_rx0_ep_sda_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_sda_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx0_ep_sda_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1) | (end_xfer_arb_share_counter_term_hdmi_rx0_ep_sda_s1 & ~hdmi_rx0_ep_sda_s1_non_bursting_master_requests))
          hdmi_rx0_ep_sda_s1_slavearbiterlockenable <= |hdmi_rx0_ep_sda_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx0_ep_sda/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx0_ep_sda_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx0_ep_sda_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_slavearbiterlockenable2 = |hdmi_rx0_ep_sda_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx0_ep_sda/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx0_ep_sda_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx0_ep_sda_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1 = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx0_ep_sda_s1_waits_for_read;

  //hdmi_rx0_ep_sda_s1_writedata mux, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx0_ep_sda/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx0_ep_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;

  //allow new arb cycle for hdmi_rx0_ep_sda/s1, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx0_ep_sda_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx0_ep_sda_s1_master_qreq_vector = 1;

  //hdmi_rx0_ep_sda_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_reset_n = reset_n;

  assign hdmi_rx0_ep_sda_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1;
  //hdmi_rx0_ep_sda_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_firsttransfer = hdmi_rx0_ep_sda_s1_begins_xfer ? hdmi_rx0_ep_sda_s1_unreg_firsttransfer : hdmi_rx0_ep_sda_s1_reg_firsttransfer;

  //hdmi_rx0_ep_sda_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_unreg_firsttransfer = ~(hdmi_rx0_ep_sda_s1_slavearbiterlockenable & hdmi_rx0_ep_sda_s1_any_continuerequest);

  //hdmi_rx0_ep_sda_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx0_ep_sda_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx0_ep_sda_s1_begins_xfer)
          hdmi_rx0_ep_sda_s1_reg_firsttransfer <= hdmi_rx0_ep_sda_s1_unreg_firsttransfer;
    end


  //hdmi_rx0_ep_sda_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_beginbursttransfer_internal = hdmi_rx0_ep_sda_s1_begins_xfer;

  //~hdmi_rx0_ep_sda_s1_write_n assignment, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx0_ep_sda_s1_address mux, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx0_ep_sda_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx0_ep_sda_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx0_ep_sda_s1_end_xfer <= hdmi_rx0_ep_sda_s1_end_xfer;
    end


  //hdmi_rx0_ep_sda_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_waits_for_read = hdmi_rx0_ep_sda_s1_in_a_read_cycle & hdmi_rx0_ep_sda_s1_begins_xfer;

  //hdmi_rx0_ep_sda_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx0_ep_sda_s1_in_a_read_cycle;

  //hdmi_rx0_ep_sda_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx0_ep_sda_s1_waits_for_write = hdmi_rx0_ep_sda_s1_in_a_write_cycle & 0;

  //hdmi_rx0_ep_sda_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx0_ep_sda_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx0_ep_sda_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx0_ep_sda_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx0_ep_sda/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx1_ep_scl_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx1_ep_scl_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1,
                                        d1_hdmi_rx1_ep_scl_s1_end_xfer,
                                        hdmi_rx1_ep_scl_s1_address,
                                        hdmi_rx1_ep_scl_s1_chipselect,
                                        hdmi_rx1_ep_scl_s1_readdata_from_sa,
                                        hdmi_rx1_ep_scl_s1_reset_n,
                                        hdmi_rx1_ep_scl_s1_write_n,
                                        hdmi_rx1_ep_scl_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;
  output           d1_hdmi_rx1_ep_scl_s1_end_xfer;
  output  [  1: 0] hdmi_rx1_ep_scl_s1_address;
  output           hdmi_rx1_ep_scl_s1_chipselect;
  output           hdmi_rx1_ep_scl_s1_readdata_from_sa;
  output           hdmi_rx1_ep_scl_s1_reset_n;
  output           hdmi_rx1_ep_scl_s1_write_n;
  output           hdmi_rx1_ep_scl_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx1_ep_scl_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx1_ep_scl_s1;
  reg              d1_hdmi_rx1_ep_scl_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1;
  wire    [  1: 0] hdmi_rx1_ep_scl_s1_address;
  wire             hdmi_rx1_ep_scl_s1_allgrants;
  wire             hdmi_rx1_ep_scl_s1_allow_new_arb_cycle;
  wire             hdmi_rx1_ep_scl_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx1_ep_scl_s1_any_continuerequest;
  wire             hdmi_rx1_ep_scl_s1_arb_counter_enable;
  reg              hdmi_rx1_ep_scl_s1_arb_share_counter;
  wire             hdmi_rx1_ep_scl_s1_arb_share_counter_next_value;
  wire             hdmi_rx1_ep_scl_s1_arb_share_set_values;
  wire             hdmi_rx1_ep_scl_s1_beginbursttransfer_internal;
  wire             hdmi_rx1_ep_scl_s1_begins_xfer;
  wire             hdmi_rx1_ep_scl_s1_chipselect;
  wire             hdmi_rx1_ep_scl_s1_end_xfer;
  wire             hdmi_rx1_ep_scl_s1_firsttransfer;
  wire             hdmi_rx1_ep_scl_s1_grant_vector;
  wire             hdmi_rx1_ep_scl_s1_in_a_read_cycle;
  wire             hdmi_rx1_ep_scl_s1_in_a_write_cycle;
  wire             hdmi_rx1_ep_scl_s1_master_qreq_vector;
  wire             hdmi_rx1_ep_scl_s1_non_bursting_master_requests;
  wire             hdmi_rx1_ep_scl_s1_readdata_from_sa;
  reg              hdmi_rx1_ep_scl_s1_reg_firsttransfer;
  wire             hdmi_rx1_ep_scl_s1_reset_n;
  reg              hdmi_rx1_ep_scl_s1_slavearbiterlockenable;
  wire             hdmi_rx1_ep_scl_s1_slavearbiterlockenable2;
  wire             hdmi_rx1_ep_scl_s1_unreg_firsttransfer;
  wire             hdmi_rx1_ep_scl_s1_waits_for_read;
  wire             hdmi_rx1_ep_scl_s1_waits_for_write;
  wire             hdmi_rx1_ep_scl_s1_write_n;
  wire             hdmi_rx1_ep_scl_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx1_ep_scl_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx1_ep_scl_s1_end_xfer;
    end


  assign hdmi_rx1_ep_scl_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1));
  //assign hdmi_rx1_ep_scl_s1_readdata_from_sa = hdmi_rx1_ep_scl_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_readdata_from_sa = hdmi_rx1_ep_scl_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h100) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx1_ep_scl_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_arb_share_set_values = 1;

  //hdmi_rx1_ep_scl_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;

  //hdmi_rx1_ep_scl_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx1_ep_scl_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_arb_share_counter_next_value = hdmi_rx1_ep_scl_s1_firsttransfer ? (hdmi_rx1_ep_scl_s1_arb_share_set_values - 1) : |hdmi_rx1_ep_scl_s1_arb_share_counter ? (hdmi_rx1_ep_scl_s1_arb_share_counter - 1) : 0;

  //hdmi_rx1_ep_scl_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_allgrants = |hdmi_rx1_ep_scl_s1_grant_vector;

  //hdmi_rx1_ep_scl_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_end_xfer = ~(hdmi_rx1_ep_scl_s1_waits_for_read | hdmi_rx1_ep_scl_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1 = hdmi_rx1_ep_scl_s1_end_xfer & (~hdmi_rx1_ep_scl_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx1_ep_scl_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1 & hdmi_rx1_ep_scl_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1 & ~hdmi_rx1_ep_scl_s1_non_bursting_master_requests);

  //hdmi_rx1_ep_scl_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_scl_s1_arb_share_counter <= 0;
      else if (hdmi_rx1_ep_scl_s1_arb_counter_enable)
          hdmi_rx1_ep_scl_s1_arb_share_counter <= hdmi_rx1_ep_scl_s1_arb_share_counter_next_value;
    end


  //hdmi_rx1_ep_scl_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_scl_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx1_ep_scl_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1) | (end_xfer_arb_share_counter_term_hdmi_rx1_ep_scl_s1 & ~hdmi_rx1_ep_scl_s1_non_bursting_master_requests))
          hdmi_rx1_ep_scl_s1_slavearbiterlockenable <= |hdmi_rx1_ep_scl_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx1_ep_scl/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx1_ep_scl_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx1_ep_scl_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_slavearbiterlockenable2 = |hdmi_rx1_ep_scl_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx1_ep_scl/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx1_ep_scl_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx1_ep_scl_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1 = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx1_ep_scl_s1_waits_for_read;

  //hdmi_rx1_ep_scl_s1_writedata mux, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx1_ep_scl/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx1_ep_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;

  //allow new arb cycle for hdmi_rx1_ep_scl/s1, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx1_ep_scl_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx1_ep_scl_s1_master_qreq_vector = 1;

  //hdmi_rx1_ep_scl_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_reset_n = reset_n;

  assign hdmi_rx1_ep_scl_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1;
  //hdmi_rx1_ep_scl_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_firsttransfer = hdmi_rx1_ep_scl_s1_begins_xfer ? hdmi_rx1_ep_scl_s1_unreg_firsttransfer : hdmi_rx1_ep_scl_s1_reg_firsttransfer;

  //hdmi_rx1_ep_scl_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_unreg_firsttransfer = ~(hdmi_rx1_ep_scl_s1_slavearbiterlockenable & hdmi_rx1_ep_scl_s1_any_continuerequest);

  //hdmi_rx1_ep_scl_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_scl_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx1_ep_scl_s1_begins_xfer)
          hdmi_rx1_ep_scl_s1_reg_firsttransfer <= hdmi_rx1_ep_scl_s1_unreg_firsttransfer;
    end


  //hdmi_rx1_ep_scl_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_beginbursttransfer_internal = hdmi_rx1_ep_scl_s1_begins_xfer;

  //~hdmi_rx1_ep_scl_s1_write_n assignment, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx1_ep_scl_s1_address mux, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx1_ep_scl_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx1_ep_scl_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx1_ep_scl_s1_end_xfer <= hdmi_rx1_ep_scl_s1_end_xfer;
    end


  //hdmi_rx1_ep_scl_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_waits_for_read = hdmi_rx1_ep_scl_s1_in_a_read_cycle & hdmi_rx1_ep_scl_s1_begins_xfer;

  //hdmi_rx1_ep_scl_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx1_ep_scl_s1_in_a_read_cycle;

  //hdmi_rx1_ep_scl_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx1_ep_scl_s1_waits_for_write = hdmi_rx1_ep_scl_s1_in_a_write_cycle & 0;

  //hdmi_rx1_ep_scl_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx1_ep_scl_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx1_ep_scl_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx1_ep_scl_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx1_ep_scl/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx1_ep_sda_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx1_ep_sda_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1,
                                        d1_hdmi_rx1_ep_sda_s1_end_xfer,
                                        hdmi_rx1_ep_sda_s1_address,
                                        hdmi_rx1_ep_sda_s1_chipselect,
                                        hdmi_rx1_ep_sda_s1_readdata_from_sa,
                                        hdmi_rx1_ep_sda_s1_reset_n,
                                        hdmi_rx1_ep_sda_s1_write_n,
                                        hdmi_rx1_ep_sda_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;
  output           d1_hdmi_rx1_ep_sda_s1_end_xfer;
  output  [  1: 0] hdmi_rx1_ep_sda_s1_address;
  output           hdmi_rx1_ep_sda_s1_chipselect;
  output           hdmi_rx1_ep_sda_s1_readdata_from_sa;
  output           hdmi_rx1_ep_sda_s1_reset_n;
  output           hdmi_rx1_ep_sda_s1_write_n;
  output           hdmi_rx1_ep_sda_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx1_ep_sda_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx1_ep_sda_s1;
  reg              d1_hdmi_rx1_ep_sda_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1;
  wire    [  1: 0] hdmi_rx1_ep_sda_s1_address;
  wire             hdmi_rx1_ep_sda_s1_allgrants;
  wire             hdmi_rx1_ep_sda_s1_allow_new_arb_cycle;
  wire             hdmi_rx1_ep_sda_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx1_ep_sda_s1_any_continuerequest;
  wire             hdmi_rx1_ep_sda_s1_arb_counter_enable;
  reg              hdmi_rx1_ep_sda_s1_arb_share_counter;
  wire             hdmi_rx1_ep_sda_s1_arb_share_counter_next_value;
  wire             hdmi_rx1_ep_sda_s1_arb_share_set_values;
  wire             hdmi_rx1_ep_sda_s1_beginbursttransfer_internal;
  wire             hdmi_rx1_ep_sda_s1_begins_xfer;
  wire             hdmi_rx1_ep_sda_s1_chipselect;
  wire             hdmi_rx1_ep_sda_s1_end_xfer;
  wire             hdmi_rx1_ep_sda_s1_firsttransfer;
  wire             hdmi_rx1_ep_sda_s1_grant_vector;
  wire             hdmi_rx1_ep_sda_s1_in_a_read_cycle;
  wire             hdmi_rx1_ep_sda_s1_in_a_write_cycle;
  wire             hdmi_rx1_ep_sda_s1_master_qreq_vector;
  wire             hdmi_rx1_ep_sda_s1_non_bursting_master_requests;
  wire             hdmi_rx1_ep_sda_s1_readdata_from_sa;
  reg              hdmi_rx1_ep_sda_s1_reg_firsttransfer;
  wire             hdmi_rx1_ep_sda_s1_reset_n;
  reg              hdmi_rx1_ep_sda_s1_slavearbiterlockenable;
  wire             hdmi_rx1_ep_sda_s1_slavearbiterlockenable2;
  wire             hdmi_rx1_ep_sda_s1_unreg_firsttransfer;
  wire             hdmi_rx1_ep_sda_s1_waits_for_read;
  wire             hdmi_rx1_ep_sda_s1_waits_for_write;
  wire             hdmi_rx1_ep_sda_s1_write_n;
  wire             hdmi_rx1_ep_sda_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx1_ep_sda_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx1_ep_sda_s1_end_xfer;
    end


  assign hdmi_rx1_ep_sda_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1));
  //assign hdmi_rx1_ep_sda_s1_readdata_from_sa = hdmi_rx1_ep_sda_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_readdata_from_sa = hdmi_rx1_ep_sda_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h110) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx1_ep_sda_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_arb_share_set_values = 1;

  //hdmi_rx1_ep_sda_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;

  //hdmi_rx1_ep_sda_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx1_ep_sda_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_arb_share_counter_next_value = hdmi_rx1_ep_sda_s1_firsttransfer ? (hdmi_rx1_ep_sda_s1_arb_share_set_values - 1) : |hdmi_rx1_ep_sda_s1_arb_share_counter ? (hdmi_rx1_ep_sda_s1_arb_share_counter - 1) : 0;

  //hdmi_rx1_ep_sda_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_allgrants = |hdmi_rx1_ep_sda_s1_grant_vector;

  //hdmi_rx1_ep_sda_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_end_xfer = ~(hdmi_rx1_ep_sda_s1_waits_for_read | hdmi_rx1_ep_sda_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1 = hdmi_rx1_ep_sda_s1_end_xfer & (~hdmi_rx1_ep_sda_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx1_ep_sda_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1 & hdmi_rx1_ep_sda_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1 & ~hdmi_rx1_ep_sda_s1_non_bursting_master_requests);

  //hdmi_rx1_ep_sda_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_sda_s1_arb_share_counter <= 0;
      else if (hdmi_rx1_ep_sda_s1_arb_counter_enable)
          hdmi_rx1_ep_sda_s1_arb_share_counter <= hdmi_rx1_ep_sda_s1_arb_share_counter_next_value;
    end


  //hdmi_rx1_ep_sda_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_sda_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx1_ep_sda_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1) | (end_xfer_arb_share_counter_term_hdmi_rx1_ep_sda_s1 & ~hdmi_rx1_ep_sda_s1_non_bursting_master_requests))
          hdmi_rx1_ep_sda_s1_slavearbiterlockenable <= |hdmi_rx1_ep_sda_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx1_ep_sda/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx1_ep_sda_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx1_ep_sda_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_slavearbiterlockenable2 = |hdmi_rx1_ep_sda_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx1_ep_sda/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx1_ep_sda_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx1_ep_sda_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1 = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx1_ep_sda_s1_waits_for_read;

  //hdmi_rx1_ep_sda_s1_writedata mux, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx1_ep_sda/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx1_ep_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;

  //allow new arb cycle for hdmi_rx1_ep_sda/s1, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx1_ep_sda_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx1_ep_sda_s1_master_qreq_vector = 1;

  //hdmi_rx1_ep_sda_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_reset_n = reset_n;

  assign hdmi_rx1_ep_sda_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1;
  //hdmi_rx1_ep_sda_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_firsttransfer = hdmi_rx1_ep_sda_s1_begins_xfer ? hdmi_rx1_ep_sda_s1_unreg_firsttransfer : hdmi_rx1_ep_sda_s1_reg_firsttransfer;

  //hdmi_rx1_ep_sda_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_unreg_firsttransfer = ~(hdmi_rx1_ep_sda_s1_slavearbiterlockenable & hdmi_rx1_ep_sda_s1_any_continuerequest);

  //hdmi_rx1_ep_sda_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx1_ep_sda_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx1_ep_sda_s1_begins_xfer)
          hdmi_rx1_ep_sda_s1_reg_firsttransfer <= hdmi_rx1_ep_sda_s1_unreg_firsttransfer;
    end


  //hdmi_rx1_ep_sda_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_beginbursttransfer_internal = hdmi_rx1_ep_sda_s1_begins_xfer;

  //~hdmi_rx1_ep_sda_s1_write_n assignment, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx1_ep_sda_s1_address mux, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx1_ep_sda_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx1_ep_sda_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx1_ep_sda_s1_end_xfer <= hdmi_rx1_ep_sda_s1_end_xfer;
    end


  //hdmi_rx1_ep_sda_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_waits_for_read = hdmi_rx1_ep_sda_s1_in_a_read_cycle & hdmi_rx1_ep_sda_s1_begins_xfer;

  //hdmi_rx1_ep_sda_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx1_ep_sda_s1_in_a_read_cycle;

  //hdmi_rx1_ep_sda_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx1_ep_sda_s1_waits_for_write = hdmi_rx1_ep_sda_s1_in_a_write_cycle & 0;

  //hdmi_rx1_ep_sda_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx1_ep_sda_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx1_ep_sda_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx1_ep_sda_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx1_ep_sda/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_cec_s1_arbitrator (
                                   // inputs:
                                    clk,
                                    clock_crossing_bridge_m1_address_to_slave,
                                    clock_crossing_bridge_m1_latency_counter,
                                    clock_crossing_bridge_m1_nativeaddress,
                                    clock_crossing_bridge_m1_read,
                                    clock_crossing_bridge_m1_write,
                                    clock_crossing_bridge_m1_writedata,
                                    hdmi_rx_cec_s1_readdata,
                                    reset_n,

                                   // outputs:
                                    clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1,
                                    clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1,
                                    clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1,
                                    clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1,
                                    d1_hdmi_rx_cec_s1_end_xfer,
                                    hdmi_rx_cec_s1_address,
                                    hdmi_rx_cec_s1_chipselect,
                                    hdmi_rx_cec_s1_readdata_from_sa,
                                    hdmi_rx_cec_s1_reset_n,
                                    hdmi_rx_cec_s1_write_n,
                                    hdmi_rx_cec_s1_writedata
                                 )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;
  output           d1_hdmi_rx_cec_s1_end_xfer;
  output  [  1: 0] hdmi_rx_cec_s1_address;
  output           hdmi_rx_cec_s1_chipselect;
  output  [  1: 0] hdmi_rx_cec_s1_readdata_from_sa;
  output           hdmi_rx_cec_s1_reset_n;
  output           hdmi_rx_cec_s1_write_n;
  output  [  1: 0] hdmi_rx_cec_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input   [  1: 0] hdmi_rx_cec_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_cec_s1;
  reg              d1_hdmi_rx_cec_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_cec_s1;
  wire    [  1: 0] hdmi_rx_cec_s1_address;
  wire             hdmi_rx_cec_s1_allgrants;
  wire             hdmi_rx_cec_s1_allow_new_arb_cycle;
  wire             hdmi_rx_cec_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_cec_s1_any_continuerequest;
  wire             hdmi_rx_cec_s1_arb_counter_enable;
  reg              hdmi_rx_cec_s1_arb_share_counter;
  wire             hdmi_rx_cec_s1_arb_share_counter_next_value;
  wire             hdmi_rx_cec_s1_arb_share_set_values;
  wire             hdmi_rx_cec_s1_beginbursttransfer_internal;
  wire             hdmi_rx_cec_s1_begins_xfer;
  wire             hdmi_rx_cec_s1_chipselect;
  wire             hdmi_rx_cec_s1_end_xfer;
  wire             hdmi_rx_cec_s1_firsttransfer;
  wire             hdmi_rx_cec_s1_grant_vector;
  wire             hdmi_rx_cec_s1_in_a_read_cycle;
  wire             hdmi_rx_cec_s1_in_a_write_cycle;
  wire             hdmi_rx_cec_s1_master_qreq_vector;
  wire             hdmi_rx_cec_s1_non_bursting_master_requests;
  wire    [  1: 0] hdmi_rx_cec_s1_readdata_from_sa;
  reg              hdmi_rx_cec_s1_reg_firsttransfer;
  wire             hdmi_rx_cec_s1_reset_n;
  reg              hdmi_rx_cec_s1_slavearbiterlockenable;
  wire             hdmi_rx_cec_s1_slavearbiterlockenable2;
  wire             hdmi_rx_cec_s1_unreg_firsttransfer;
  wire             hdmi_rx_cec_s1_waits_for_read;
  wire             hdmi_rx_cec_s1_waits_for_write;
  wire             hdmi_rx_cec_s1_write_n;
  wire    [  1: 0] hdmi_rx_cec_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_cec_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_cec_s1_end_xfer;
    end


  assign hdmi_rx_cec_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1));
  //assign hdmi_rx_cec_s1_readdata_from_sa = hdmi_rx_cec_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_cec_s1_readdata_from_sa = hdmi_rx_cec_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'hd0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_cec_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_cec_s1_arb_share_set_values = 1;

  //hdmi_rx_cec_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_cec_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;

  //hdmi_rx_cec_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_cec_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_cec_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_cec_s1_arb_share_counter_next_value = hdmi_rx_cec_s1_firsttransfer ? (hdmi_rx_cec_s1_arb_share_set_values - 1) : |hdmi_rx_cec_s1_arb_share_counter ? (hdmi_rx_cec_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_cec_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_cec_s1_allgrants = |hdmi_rx_cec_s1_grant_vector;

  //hdmi_rx_cec_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_cec_s1_end_xfer = ~(hdmi_rx_cec_s1_waits_for_read | hdmi_rx_cec_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_cec_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_cec_s1 = hdmi_rx_cec_s1_end_xfer & (~hdmi_rx_cec_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_cec_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_cec_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_cec_s1 & hdmi_rx_cec_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_cec_s1 & ~hdmi_rx_cec_s1_non_bursting_master_requests);

  //hdmi_rx_cec_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_cec_s1_arb_share_counter <= 0;
      else if (hdmi_rx_cec_s1_arb_counter_enable)
          hdmi_rx_cec_s1_arb_share_counter <= hdmi_rx_cec_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_cec_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_cec_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_cec_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_cec_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_cec_s1 & ~hdmi_rx_cec_s1_non_bursting_master_requests))
          hdmi_rx_cec_s1_slavearbiterlockenable <= |hdmi_rx_cec_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_cec/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_cec_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_cec_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_cec_s1_slavearbiterlockenable2 = |hdmi_rx_cec_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_cec/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_cec_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_cec_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_cec_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_cec_s1_waits_for_read;

  //hdmi_rx_cec_s1_writedata mux, which is an e_mux
  assign hdmi_rx_cec_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_cec/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_cec_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;

  //allow new arb cycle for hdmi_rx_cec/s1, which is an e_assign
  assign hdmi_rx_cec_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_cec_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_cec_s1_master_qreq_vector = 1;

  //hdmi_rx_cec_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_cec_s1_reset_n = reset_n;

  assign hdmi_rx_cec_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1;
  //hdmi_rx_cec_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_cec_s1_firsttransfer = hdmi_rx_cec_s1_begins_xfer ? hdmi_rx_cec_s1_unreg_firsttransfer : hdmi_rx_cec_s1_reg_firsttransfer;

  //hdmi_rx_cec_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_cec_s1_unreg_firsttransfer = ~(hdmi_rx_cec_s1_slavearbiterlockenable & hdmi_rx_cec_s1_any_continuerequest);

  //hdmi_rx_cec_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_cec_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_cec_s1_begins_xfer)
          hdmi_rx_cec_s1_reg_firsttransfer <= hdmi_rx_cec_s1_unreg_firsttransfer;
    end


  //hdmi_rx_cec_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_cec_s1_beginbursttransfer_internal = hdmi_rx_cec_s1_begins_xfer;

  //~hdmi_rx_cec_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_cec_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_cec_s1_address mux, which is an e_mux
  assign hdmi_rx_cec_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_cec_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_cec_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_cec_s1_end_xfer <= hdmi_rx_cec_s1_end_xfer;
    end


  //hdmi_rx_cec_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_cec_s1_waits_for_read = hdmi_rx_cec_s1_in_a_read_cycle & hdmi_rx_cec_s1_begins_xfer;

  //hdmi_rx_cec_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_cec_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_cec_s1_in_a_read_cycle;

  //hdmi_rx_cec_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_cec_s1_waits_for_write = hdmi_rx_cec_s1_in_a_write_cycle & 0;

  //hdmi_rx_cec_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_cec_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_cec_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_cec_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_cec/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_edid_wp_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx_edid_wp_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1,
                                        d1_hdmi_rx_edid_wp_s1_end_xfer,
                                        hdmi_rx_edid_wp_s1_address,
                                        hdmi_rx_edid_wp_s1_chipselect,
                                        hdmi_rx_edid_wp_s1_readdata_from_sa,
                                        hdmi_rx_edid_wp_s1_reset_n,
                                        hdmi_rx_edid_wp_s1_write_n,
                                        hdmi_rx_edid_wp_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;
  output           d1_hdmi_rx_edid_wp_s1_end_xfer;
  output  [  1: 0] hdmi_rx_edid_wp_s1_address;
  output           hdmi_rx_edid_wp_s1_chipselect;
  output           hdmi_rx_edid_wp_s1_readdata_from_sa;
  output           hdmi_rx_edid_wp_s1_reset_n;
  output           hdmi_rx_edid_wp_s1_write_n;
  output           hdmi_rx_edid_wp_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx_edid_wp_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_edid_wp_s1;
  reg              d1_hdmi_rx_edid_wp_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1;
  wire    [  1: 0] hdmi_rx_edid_wp_s1_address;
  wire             hdmi_rx_edid_wp_s1_allgrants;
  wire             hdmi_rx_edid_wp_s1_allow_new_arb_cycle;
  wire             hdmi_rx_edid_wp_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_edid_wp_s1_any_continuerequest;
  wire             hdmi_rx_edid_wp_s1_arb_counter_enable;
  reg              hdmi_rx_edid_wp_s1_arb_share_counter;
  wire             hdmi_rx_edid_wp_s1_arb_share_counter_next_value;
  wire             hdmi_rx_edid_wp_s1_arb_share_set_values;
  wire             hdmi_rx_edid_wp_s1_beginbursttransfer_internal;
  wire             hdmi_rx_edid_wp_s1_begins_xfer;
  wire             hdmi_rx_edid_wp_s1_chipselect;
  wire             hdmi_rx_edid_wp_s1_end_xfer;
  wire             hdmi_rx_edid_wp_s1_firsttransfer;
  wire             hdmi_rx_edid_wp_s1_grant_vector;
  wire             hdmi_rx_edid_wp_s1_in_a_read_cycle;
  wire             hdmi_rx_edid_wp_s1_in_a_write_cycle;
  wire             hdmi_rx_edid_wp_s1_master_qreq_vector;
  wire             hdmi_rx_edid_wp_s1_non_bursting_master_requests;
  wire             hdmi_rx_edid_wp_s1_readdata_from_sa;
  reg              hdmi_rx_edid_wp_s1_reg_firsttransfer;
  wire             hdmi_rx_edid_wp_s1_reset_n;
  reg              hdmi_rx_edid_wp_s1_slavearbiterlockenable;
  wire             hdmi_rx_edid_wp_s1_slavearbiterlockenable2;
  wire             hdmi_rx_edid_wp_s1_unreg_firsttransfer;
  wire             hdmi_rx_edid_wp_s1_waits_for_read;
  wire             hdmi_rx_edid_wp_s1_waits_for_write;
  wire             hdmi_rx_edid_wp_s1_write_n;
  wire             hdmi_rx_edid_wp_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_edid_wp_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_edid_wp_s1_end_xfer;
    end


  assign hdmi_rx_edid_wp_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1));
  //assign hdmi_rx_edid_wp_s1_readdata_from_sa = hdmi_rx_edid_wp_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_edid_wp_s1_readdata_from_sa = hdmi_rx_edid_wp_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h160) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_edid_wp_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_edid_wp_s1_arb_share_set_values = 1;

  //hdmi_rx_edid_wp_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_edid_wp_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;

  //hdmi_rx_edid_wp_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_edid_wp_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_edid_wp_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_edid_wp_s1_arb_share_counter_next_value = hdmi_rx_edid_wp_s1_firsttransfer ? (hdmi_rx_edid_wp_s1_arb_share_set_values - 1) : |hdmi_rx_edid_wp_s1_arb_share_counter ? (hdmi_rx_edid_wp_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_edid_wp_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_edid_wp_s1_allgrants = |hdmi_rx_edid_wp_s1_grant_vector;

  //hdmi_rx_edid_wp_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_edid_wp_s1_end_xfer = ~(hdmi_rx_edid_wp_s1_waits_for_read | hdmi_rx_edid_wp_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1 = hdmi_rx_edid_wp_s1_end_xfer & (~hdmi_rx_edid_wp_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_edid_wp_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_edid_wp_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1 & hdmi_rx_edid_wp_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1 & ~hdmi_rx_edid_wp_s1_non_bursting_master_requests);

  //hdmi_rx_edid_wp_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_edid_wp_s1_arb_share_counter <= 0;
      else if (hdmi_rx_edid_wp_s1_arb_counter_enable)
          hdmi_rx_edid_wp_s1_arb_share_counter <= hdmi_rx_edid_wp_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_edid_wp_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_edid_wp_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_edid_wp_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_edid_wp_s1 & ~hdmi_rx_edid_wp_s1_non_bursting_master_requests))
          hdmi_rx_edid_wp_s1_slavearbiterlockenable <= |hdmi_rx_edid_wp_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_edid_wp/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_edid_wp_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_edid_wp_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_edid_wp_s1_slavearbiterlockenable2 = |hdmi_rx_edid_wp_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_edid_wp/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_edid_wp_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_edid_wp_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_edid_wp_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_edid_wp_s1_waits_for_read;

  //hdmi_rx_edid_wp_s1_writedata mux, which is an e_mux
  assign hdmi_rx_edid_wp_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_edid_wp/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_edid_wp_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;

  //allow new arb cycle for hdmi_rx_edid_wp/s1, which is an e_assign
  assign hdmi_rx_edid_wp_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_edid_wp_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_edid_wp_s1_master_qreq_vector = 1;

  //hdmi_rx_edid_wp_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_edid_wp_s1_reset_n = reset_n;

  assign hdmi_rx_edid_wp_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1;
  //hdmi_rx_edid_wp_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_edid_wp_s1_firsttransfer = hdmi_rx_edid_wp_s1_begins_xfer ? hdmi_rx_edid_wp_s1_unreg_firsttransfer : hdmi_rx_edid_wp_s1_reg_firsttransfer;

  //hdmi_rx_edid_wp_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_edid_wp_s1_unreg_firsttransfer = ~(hdmi_rx_edid_wp_s1_slavearbiterlockenable & hdmi_rx_edid_wp_s1_any_continuerequest);

  //hdmi_rx_edid_wp_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_edid_wp_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_edid_wp_s1_begins_xfer)
          hdmi_rx_edid_wp_s1_reg_firsttransfer <= hdmi_rx_edid_wp_s1_unreg_firsttransfer;
    end


  //hdmi_rx_edid_wp_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_edid_wp_s1_beginbursttransfer_internal = hdmi_rx_edid_wp_s1_begins_xfer;

  //~hdmi_rx_edid_wp_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_edid_wp_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_edid_wp_s1_address mux, which is an e_mux
  assign hdmi_rx_edid_wp_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_edid_wp_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_edid_wp_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_edid_wp_s1_end_xfer <= hdmi_rx_edid_wp_s1_end_xfer;
    end


  //hdmi_rx_edid_wp_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_edid_wp_s1_waits_for_read = hdmi_rx_edid_wp_s1_in_a_read_cycle & hdmi_rx_edid_wp_s1_begins_xfer;

  //hdmi_rx_edid_wp_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_edid_wp_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_edid_wp_s1_in_a_read_cycle;

  //hdmi_rx_edid_wp_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_edid_wp_s1_waits_for_write = hdmi_rx_edid_wp_s1_in_a_write_cycle & 0;

  //hdmi_rx_edid_wp_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_edid_wp_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_edid_wp_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_edid_wp_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_edid_wp/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_hpd_n_s1_arbitrator (
                                     // inputs:
                                      clk,
                                      clock_crossing_bridge_m1_address_to_slave,
                                      clock_crossing_bridge_m1_latency_counter,
                                      clock_crossing_bridge_m1_nativeaddress,
                                      clock_crossing_bridge_m1_read,
                                      clock_crossing_bridge_m1_write,
                                      clock_crossing_bridge_m1_writedata,
                                      hdmi_rx_hpd_n_s1_readdata,
                                      reset_n,

                                     // outputs:
                                      clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1,
                                      clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1,
                                      clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1,
                                      clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1,
                                      d1_hdmi_rx_hpd_n_s1_end_xfer,
                                      hdmi_rx_hpd_n_s1_address,
                                      hdmi_rx_hpd_n_s1_chipselect,
                                      hdmi_rx_hpd_n_s1_readdata_from_sa,
                                      hdmi_rx_hpd_n_s1_reset_n,
                                      hdmi_rx_hpd_n_s1_write_n,
                                      hdmi_rx_hpd_n_s1_writedata
                                   )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;
  output           d1_hdmi_rx_hpd_n_s1_end_xfer;
  output  [  1: 0] hdmi_rx_hpd_n_s1_address;
  output           hdmi_rx_hpd_n_s1_chipselect;
  output  [  1: 0] hdmi_rx_hpd_n_s1_readdata_from_sa;
  output           hdmi_rx_hpd_n_s1_reset_n;
  output           hdmi_rx_hpd_n_s1_write_n;
  output  [  1: 0] hdmi_rx_hpd_n_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input   [  1: 0] hdmi_rx_hpd_n_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_hpd_n_s1;
  reg              d1_hdmi_rx_hpd_n_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_address;
  wire             hdmi_rx_hpd_n_s1_allgrants;
  wire             hdmi_rx_hpd_n_s1_allow_new_arb_cycle;
  wire             hdmi_rx_hpd_n_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_hpd_n_s1_any_continuerequest;
  wire             hdmi_rx_hpd_n_s1_arb_counter_enable;
  reg              hdmi_rx_hpd_n_s1_arb_share_counter;
  wire             hdmi_rx_hpd_n_s1_arb_share_counter_next_value;
  wire             hdmi_rx_hpd_n_s1_arb_share_set_values;
  wire             hdmi_rx_hpd_n_s1_beginbursttransfer_internal;
  wire             hdmi_rx_hpd_n_s1_begins_xfer;
  wire             hdmi_rx_hpd_n_s1_chipselect;
  wire             hdmi_rx_hpd_n_s1_end_xfer;
  wire             hdmi_rx_hpd_n_s1_firsttransfer;
  wire             hdmi_rx_hpd_n_s1_grant_vector;
  wire             hdmi_rx_hpd_n_s1_in_a_read_cycle;
  wire             hdmi_rx_hpd_n_s1_in_a_write_cycle;
  wire             hdmi_rx_hpd_n_s1_master_qreq_vector;
  wire             hdmi_rx_hpd_n_s1_non_bursting_master_requests;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_readdata_from_sa;
  reg              hdmi_rx_hpd_n_s1_reg_firsttransfer;
  wire             hdmi_rx_hpd_n_s1_reset_n;
  reg              hdmi_rx_hpd_n_s1_slavearbiterlockenable;
  wire             hdmi_rx_hpd_n_s1_slavearbiterlockenable2;
  wire             hdmi_rx_hpd_n_s1_unreg_firsttransfer;
  wire             hdmi_rx_hpd_n_s1_waits_for_read;
  wire             hdmi_rx_hpd_n_s1_waits_for_write;
  wire             hdmi_rx_hpd_n_s1_write_n;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_hpd_n_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_hpd_n_s1_end_xfer;
    end


  assign hdmi_rx_hpd_n_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1));
  //assign hdmi_rx_hpd_n_s1_readdata_from_sa = hdmi_rx_hpd_n_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_hpd_n_s1_readdata_from_sa = hdmi_rx_hpd_n_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'hc0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_hpd_n_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_hpd_n_s1_arb_share_set_values = 1;

  //hdmi_rx_hpd_n_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_hpd_n_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;

  //hdmi_rx_hpd_n_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_hpd_n_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_hpd_n_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_hpd_n_s1_arb_share_counter_next_value = hdmi_rx_hpd_n_s1_firsttransfer ? (hdmi_rx_hpd_n_s1_arb_share_set_values - 1) : |hdmi_rx_hpd_n_s1_arb_share_counter ? (hdmi_rx_hpd_n_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_hpd_n_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_hpd_n_s1_allgrants = |hdmi_rx_hpd_n_s1_grant_vector;

  //hdmi_rx_hpd_n_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_hpd_n_s1_end_xfer = ~(hdmi_rx_hpd_n_s1_waits_for_read | hdmi_rx_hpd_n_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1 = hdmi_rx_hpd_n_s1_end_xfer & (~hdmi_rx_hpd_n_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_hpd_n_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_hpd_n_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1 & hdmi_rx_hpd_n_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1 & ~hdmi_rx_hpd_n_s1_non_bursting_master_requests);

  //hdmi_rx_hpd_n_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_hpd_n_s1_arb_share_counter <= 0;
      else if (hdmi_rx_hpd_n_s1_arb_counter_enable)
          hdmi_rx_hpd_n_s1_arb_share_counter <= hdmi_rx_hpd_n_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_hpd_n_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_hpd_n_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_hpd_n_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_hpd_n_s1 & ~hdmi_rx_hpd_n_s1_non_bursting_master_requests))
          hdmi_rx_hpd_n_s1_slavearbiterlockenable <= |hdmi_rx_hpd_n_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_hpd_n/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_hpd_n_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_hpd_n_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_hpd_n_s1_slavearbiterlockenable2 = |hdmi_rx_hpd_n_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_hpd_n/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_hpd_n_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_hpd_n_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_hpd_n_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_hpd_n_s1_waits_for_read;

  //hdmi_rx_hpd_n_s1_writedata mux, which is an e_mux
  assign hdmi_rx_hpd_n_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_hpd_n/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_hpd_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;

  //allow new arb cycle for hdmi_rx_hpd_n/s1, which is an e_assign
  assign hdmi_rx_hpd_n_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_hpd_n_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_hpd_n_s1_master_qreq_vector = 1;

  //hdmi_rx_hpd_n_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_hpd_n_s1_reset_n = reset_n;

  assign hdmi_rx_hpd_n_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1;
  //hdmi_rx_hpd_n_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_hpd_n_s1_firsttransfer = hdmi_rx_hpd_n_s1_begins_xfer ? hdmi_rx_hpd_n_s1_unreg_firsttransfer : hdmi_rx_hpd_n_s1_reg_firsttransfer;

  //hdmi_rx_hpd_n_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_hpd_n_s1_unreg_firsttransfer = ~(hdmi_rx_hpd_n_s1_slavearbiterlockenable & hdmi_rx_hpd_n_s1_any_continuerequest);

  //hdmi_rx_hpd_n_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_hpd_n_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_hpd_n_s1_begins_xfer)
          hdmi_rx_hpd_n_s1_reg_firsttransfer <= hdmi_rx_hpd_n_s1_unreg_firsttransfer;
    end


  //hdmi_rx_hpd_n_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_hpd_n_s1_beginbursttransfer_internal = hdmi_rx_hpd_n_s1_begins_xfer;

  //~hdmi_rx_hpd_n_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_hpd_n_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_hpd_n_s1_address mux, which is an e_mux
  assign hdmi_rx_hpd_n_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_hpd_n_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_hpd_n_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_hpd_n_s1_end_xfer <= hdmi_rx_hpd_n_s1_end_xfer;
    end


  //hdmi_rx_hpd_n_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_hpd_n_s1_waits_for_read = hdmi_rx_hpd_n_s1_in_a_read_cycle & hdmi_rx_hpd_n_s1_begins_xfer;

  //hdmi_rx_hpd_n_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_hpd_n_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_hpd_n_s1_in_a_read_cycle;

  //hdmi_rx_hpd_n_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_hpd_n_s1_waits_for_write = hdmi_rx_hpd_n_s1_in_a_write_cycle & 0;

  //hdmi_rx_hpd_n_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_hpd_n_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_hpd_n_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_hpd_n_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_hpd_n/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_i2c_scl_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx_i2c_scl_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1,
                                        d1_hdmi_rx_i2c_scl_s1_end_xfer,
                                        hdmi_rx_i2c_scl_s1_address,
                                        hdmi_rx_i2c_scl_s1_chipselect,
                                        hdmi_rx_i2c_scl_s1_readdata_from_sa,
                                        hdmi_rx_i2c_scl_s1_reset_n,
                                        hdmi_rx_i2c_scl_s1_write_n,
                                        hdmi_rx_i2c_scl_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;
  output           d1_hdmi_rx_i2c_scl_s1_end_xfer;
  output  [  1: 0] hdmi_rx_i2c_scl_s1_address;
  output           hdmi_rx_i2c_scl_s1_chipselect;
  output           hdmi_rx_i2c_scl_s1_readdata_from_sa;
  output           hdmi_rx_i2c_scl_s1_reset_n;
  output           hdmi_rx_i2c_scl_s1_write_n;
  output           hdmi_rx_i2c_scl_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx_i2c_scl_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_i2c_scl_s1;
  reg              d1_hdmi_rx_i2c_scl_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1;
  wire    [  1: 0] hdmi_rx_i2c_scl_s1_address;
  wire             hdmi_rx_i2c_scl_s1_allgrants;
  wire             hdmi_rx_i2c_scl_s1_allow_new_arb_cycle;
  wire             hdmi_rx_i2c_scl_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_i2c_scl_s1_any_continuerequest;
  wire             hdmi_rx_i2c_scl_s1_arb_counter_enable;
  reg              hdmi_rx_i2c_scl_s1_arb_share_counter;
  wire             hdmi_rx_i2c_scl_s1_arb_share_counter_next_value;
  wire             hdmi_rx_i2c_scl_s1_arb_share_set_values;
  wire             hdmi_rx_i2c_scl_s1_beginbursttransfer_internal;
  wire             hdmi_rx_i2c_scl_s1_begins_xfer;
  wire             hdmi_rx_i2c_scl_s1_chipselect;
  wire             hdmi_rx_i2c_scl_s1_end_xfer;
  wire             hdmi_rx_i2c_scl_s1_firsttransfer;
  wire             hdmi_rx_i2c_scl_s1_grant_vector;
  wire             hdmi_rx_i2c_scl_s1_in_a_read_cycle;
  wire             hdmi_rx_i2c_scl_s1_in_a_write_cycle;
  wire             hdmi_rx_i2c_scl_s1_master_qreq_vector;
  wire             hdmi_rx_i2c_scl_s1_non_bursting_master_requests;
  wire             hdmi_rx_i2c_scl_s1_readdata_from_sa;
  reg              hdmi_rx_i2c_scl_s1_reg_firsttransfer;
  wire             hdmi_rx_i2c_scl_s1_reset_n;
  reg              hdmi_rx_i2c_scl_s1_slavearbiterlockenable;
  wire             hdmi_rx_i2c_scl_s1_slavearbiterlockenable2;
  wire             hdmi_rx_i2c_scl_s1_unreg_firsttransfer;
  wire             hdmi_rx_i2c_scl_s1_waits_for_read;
  wire             hdmi_rx_i2c_scl_s1_waits_for_write;
  wire             hdmi_rx_i2c_scl_s1_write_n;
  wire             hdmi_rx_i2c_scl_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_i2c_scl_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_i2c_scl_s1_end_xfer;
    end


  assign hdmi_rx_i2c_scl_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1));
  //assign hdmi_rx_i2c_scl_s1_readdata_from_sa = hdmi_rx_i2c_scl_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_readdata_from_sa = hdmi_rx_i2c_scl_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h40) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_i2c_scl_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_arb_share_set_values = 1;

  //hdmi_rx_i2c_scl_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;

  //hdmi_rx_i2c_scl_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_i2c_scl_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_arb_share_counter_next_value = hdmi_rx_i2c_scl_s1_firsttransfer ? (hdmi_rx_i2c_scl_s1_arb_share_set_values - 1) : |hdmi_rx_i2c_scl_s1_arb_share_counter ? (hdmi_rx_i2c_scl_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_i2c_scl_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_allgrants = |hdmi_rx_i2c_scl_s1_grant_vector;

  //hdmi_rx_i2c_scl_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_end_xfer = ~(hdmi_rx_i2c_scl_s1_waits_for_read | hdmi_rx_i2c_scl_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1 = hdmi_rx_i2c_scl_s1_end_xfer & (~hdmi_rx_i2c_scl_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_i2c_scl_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1 & hdmi_rx_i2c_scl_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1 & ~hdmi_rx_i2c_scl_s1_non_bursting_master_requests);

  //hdmi_rx_i2c_scl_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_scl_s1_arb_share_counter <= 0;
      else if (hdmi_rx_i2c_scl_s1_arb_counter_enable)
          hdmi_rx_i2c_scl_s1_arb_share_counter <= hdmi_rx_i2c_scl_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_i2c_scl_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_scl_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_i2c_scl_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_i2c_scl_s1 & ~hdmi_rx_i2c_scl_s1_non_bursting_master_requests))
          hdmi_rx_i2c_scl_s1_slavearbiterlockenable <= |hdmi_rx_i2c_scl_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_i2c_scl/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_i2c_scl_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_i2c_scl_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_slavearbiterlockenable2 = |hdmi_rx_i2c_scl_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_i2c_scl/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_i2c_scl_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_i2c_scl_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_i2c_scl_s1_waits_for_read;

  //hdmi_rx_i2c_scl_s1_writedata mux, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_i2c_scl/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_i2c_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;

  //allow new arb cycle for hdmi_rx_i2c_scl/s1, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_i2c_scl_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_i2c_scl_s1_master_qreq_vector = 1;

  //hdmi_rx_i2c_scl_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_reset_n = reset_n;

  assign hdmi_rx_i2c_scl_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1;
  //hdmi_rx_i2c_scl_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_firsttransfer = hdmi_rx_i2c_scl_s1_begins_xfer ? hdmi_rx_i2c_scl_s1_unreg_firsttransfer : hdmi_rx_i2c_scl_s1_reg_firsttransfer;

  //hdmi_rx_i2c_scl_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_unreg_firsttransfer = ~(hdmi_rx_i2c_scl_s1_slavearbiterlockenable & hdmi_rx_i2c_scl_s1_any_continuerequest);

  //hdmi_rx_i2c_scl_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_scl_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_i2c_scl_s1_begins_xfer)
          hdmi_rx_i2c_scl_s1_reg_firsttransfer <= hdmi_rx_i2c_scl_s1_unreg_firsttransfer;
    end


  //hdmi_rx_i2c_scl_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_beginbursttransfer_internal = hdmi_rx_i2c_scl_s1_begins_xfer;

  //~hdmi_rx_i2c_scl_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_i2c_scl_s1_address mux, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_i2c_scl_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_i2c_scl_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_i2c_scl_s1_end_xfer <= hdmi_rx_i2c_scl_s1_end_xfer;
    end


  //hdmi_rx_i2c_scl_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_waits_for_read = hdmi_rx_i2c_scl_s1_in_a_read_cycle & hdmi_rx_i2c_scl_s1_begins_xfer;

  //hdmi_rx_i2c_scl_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_i2c_scl_s1_in_a_read_cycle;

  //hdmi_rx_i2c_scl_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_i2c_scl_s1_waits_for_write = hdmi_rx_i2c_scl_s1_in_a_write_cycle & 0;

  //hdmi_rx_i2c_scl_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_i2c_scl_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_i2c_scl_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_i2c_scl_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_i2c_scl/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_i2c_sda_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx_i2c_sda_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1,
                                        d1_hdmi_rx_i2c_sda_s1_end_xfer,
                                        hdmi_rx_i2c_sda_s1_address,
                                        hdmi_rx_i2c_sda_s1_chipselect,
                                        hdmi_rx_i2c_sda_s1_readdata_from_sa,
                                        hdmi_rx_i2c_sda_s1_reset_n,
                                        hdmi_rx_i2c_sda_s1_write_n,
                                        hdmi_rx_i2c_sda_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;
  output           d1_hdmi_rx_i2c_sda_s1_end_xfer;
  output  [  1: 0] hdmi_rx_i2c_sda_s1_address;
  output           hdmi_rx_i2c_sda_s1_chipselect;
  output           hdmi_rx_i2c_sda_s1_readdata_from_sa;
  output           hdmi_rx_i2c_sda_s1_reset_n;
  output           hdmi_rx_i2c_sda_s1_write_n;
  output           hdmi_rx_i2c_sda_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx_i2c_sda_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_i2c_sda_s1;
  reg              d1_hdmi_rx_i2c_sda_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1;
  wire    [  1: 0] hdmi_rx_i2c_sda_s1_address;
  wire             hdmi_rx_i2c_sda_s1_allgrants;
  wire             hdmi_rx_i2c_sda_s1_allow_new_arb_cycle;
  wire             hdmi_rx_i2c_sda_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_i2c_sda_s1_any_continuerequest;
  wire             hdmi_rx_i2c_sda_s1_arb_counter_enable;
  reg              hdmi_rx_i2c_sda_s1_arb_share_counter;
  wire             hdmi_rx_i2c_sda_s1_arb_share_counter_next_value;
  wire             hdmi_rx_i2c_sda_s1_arb_share_set_values;
  wire             hdmi_rx_i2c_sda_s1_beginbursttransfer_internal;
  wire             hdmi_rx_i2c_sda_s1_begins_xfer;
  wire             hdmi_rx_i2c_sda_s1_chipselect;
  wire             hdmi_rx_i2c_sda_s1_end_xfer;
  wire             hdmi_rx_i2c_sda_s1_firsttransfer;
  wire             hdmi_rx_i2c_sda_s1_grant_vector;
  wire             hdmi_rx_i2c_sda_s1_in_a_read_cycle;
  wire             hdmi_rx_i2c_sda_s1_in_a_write_cycle;
  wire             hdmi_rx_i2c_sda_s1_master_qreq_vector;
  wire             hdmi_rx_i2c_sda_s1_non_bursting_master_requests;
  wire             hdmi_rx_i2c_sda_s1_readdata_from_sa;
  reg              hdmi_rx_i2c_sda_s1_reg_firsttransfer;
  wire             hdmi_rx_i2c_sda_s1_reset_n;
  reg              hdmi_rx_i2c_sda_s1_slavearbiterlockenable;
  wire             hdmi_rx_i2c_sda_s1_slavearbiterlockenable2;
  wire             hdmi_rx_i2c_sda_s1_unreg_firsttransfer;
  wire             hdmi_rx_i2c_sda_s1_waits_for_read;
  wire             hdmi_rx_i2c_sda_s1_waits_for_write;
  wire             hdmi_rx_i2c_sda_s1_write_n;
  wire             hdmi_rx_i2c_sda_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_i2c_sda_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_i2c_sda_s1_end_xfer;
    end


  assign hdmi_rx_i2c_sda_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1));
  //assign hdmi_rx_i2c_sda_s1_readdata_from_sa = hdmi_rx_i2c_sda_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_readdata_from_sa = hdmi_rx_i2c_sda_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h50) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_i2c_sda_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_arb_share_set_values = 1;

  //hdmi_rx_i2c_sda_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;

  //hdmi_rx_i2c_sda_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_i2c_sda_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_arb_share_counter_next_value = hdmi_rx_i2c_sda_s1_firsttransfer ? (hdmi_rx_i2c_sda_s1_arb_share_set_values - 1) : |hdmi_rx_i2c_sda_s1_arb_share_counter ? (hdmi_rx_i2c_sda_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_i2c_sda_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_allgrants = |hdmi_rx_i2c_sda_s1_grant_vector;

  //hdmi_rx_i2c_sda_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_end_xfer = ~(hdmi_rx_i2c_sda_s1_waits_for_read | hdmi_rx_i2c_sda_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1 = hdmi_rx_i2c_sda_s1_end_xfer & (~hdmi_rx_i2c_sda_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_i2c_sda_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1 & hdmi_rx_i2c_sda_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1 & ~hdmi_rx_i2c_sda_s1_non_bursting_master_requests);

  //hdmi_rx_i2c_sda_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_sda_s1_arb_share_counter <= 0;
      else if (hdmi_rx_i2c_sda_s1_arb_counter_enable)
          hdmi_rx_i2c_sda_s1_arb_share_counter <= hdmi_rx_i2c_sda_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_i2c_sda_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_sda_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_i2c_sda_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_i2c_sda_s1 & ~hdmi_rx_i2c_sda_s1_non_bursting_master_requests))
          hdmi_rx_i2c_sda_s1_slavearbiterlockenable <= |hdmi_rx_i2c_sda_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_i2c_sda/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_i2c_sda_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_i2c_sda_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_slavearbiterlockenable2 = |hdmi_rx_i2c_sda_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_i2c_sda/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_i2c_sda_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_i2c_sda_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_i2c_sda_s1_waits_for_read;

  //hdmi_rx_i2c_sda_s1_writedata mux, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_i2c_sda/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_i2c_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;

  //allow new arb cycle for hdmi_rx_i2c_sda/s1, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_i2c_sda_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_i2c_sda_s1_master_qreq_vector = 1;

  //hdmi_rx_i2c_sda_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_reset_n = reset_n;

  assign hdmi_rx_i2c_sda_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1;
  //hdmi_rx_i2c_sda_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_firsttransfer = hdmi_rx_i2c_sda_s1_begins_xfer ? hdmi_rx_i2c_sda_s1_unreg_firsttransfer : hdmi_rx_i2c_sda_s1_reg_firsttransfer;

  //hdmi_rx_i2c_sda_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_unreg_firsttransfer = ~(hdmi_rx_i2c_sda_s1_slavearbiterlockenable & hdmi_rx_i2c_sda_s1_any_continuerequest);

  //hdmi_rx_i2c_sda_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_i2c_sda_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_i2c_sda_s1_begins_xfer)
          hdmi_rx_i2c_sda_s1_reg_firsttransfer <= hdmi_rx_i2c_sda_s1_unreg_firsttransfer;
    end


  //hdmi_rx_i2c_sda_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_beginbursttransfer_internal = hdmi_rx_i2c_sda_s1_begins_xfer;

  //~hdmi_rx_i2c_sda_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_i2c_sda_s1_address mux, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_i2c_sda_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_i2c_sda_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_i2c_sda_s1_end_xfer <= hdmi_rx_i2c_sda_s1_end_xfer;
    end


  //hdmi_rx_i2c_sda_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_waits_for_read = hdmi_rx_i2c_sda_s1_in_a_read_cycle & hdmi_rx_i2c_sda_s1_begins_xfer;

  //hdmi_rx_i2c_sda_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_i2c_sda_s1_in_a_read_cycle;

  //hdmi_rx_i2c_sda_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_i2c_sda_s1_waits_for_write = hdmi_rx_i2c_sda_s1_in_a_write_cycle & 0;

  //hdmi_rx_i2c_sda_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_i2c_sda_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_i2c_sda_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_i2c_sda_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_i2c_sda/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_irq_n_s1_arbitrator (
                                     // inputs:
                                      clk,
                                      clock_crossing_bridge_m1_address_to_slave,
                                      clock_crossing_bridge_m1_latency_counter,
                                      clock_crossing_bridge_m1_nativeaddress,
                                      clock_crossing_bridge_m1_read,
                                      clock_crossing_bridge_m1_write,
                                      hdmi_rx_irq_n_s1_readdata,
                                      reset_n,

                                     // outputs:
                                      clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1,
                                      clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1,
                                      clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1,
                                      clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1,
                                      d1_hdmi_rx_irq_n_s1_end_xfer,
                                      hdmi_rx_irq_n_s1_address,
                                      hdmi_rx_irq_n_s1_readdata_from_sa,
                                      hdmi_rx_irq_n_s1_reset_n
                                   )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;
  output           d1_hdmi_rx_irq_n_s1_end_xfer;
  output  [  1: 0] hdmi_rx_irq_n_s1_address;
  output           hdmi_rx_irq_n_s1_readdata_from_sa;
  output           hdmi_rx_irq_n_s1_reset_n;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input            hdmi_rx_irq_n_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_irq_n_s1;
  reg              d1_hdmi_rx_irq_n_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1;
  wire    [  1: 0] hdmi_rx_irq_n_s1_address;
  wire             hdmi_rx_irq_n_s1_allgrants;
  wire             hdmi_rx_irq_n_s1_allow_new_arb_cycle;
  wire             hdmi_rx_irq_n_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_irq_n_s1_any_continuerequest;
  wire             hdmi_rx_irq_n_s1_arb_counter_enable;
  reg              hdmi_rx_irq_n_s1_arb_share_counter;
  wire             hdmi_rx_irq_n_s1_arb_share_counter_next_value;
  wire             hdmi_rx_irq_n_s1_arb_share_set_values;
  wire             hdmi_rx_irq_n_s1_beginbursttransfer_internal;
  wire             hdmi_rx_irq_n_s1_begins_xfer;
  wire             hdmi_rx_irq_n_s1_end_xfer;
  wire             hdmi_rx_irq_n_s1_firsttransfer;
  wire             hdmi_rx_irq_n_s1_grant_vector;
  wire             hdmi_rx_irq_n_s1_in_a_read_cycle;
  wire             hdmi_rx_irq_n_s1_in_a_write_cycle;
  wire             hdmi_rx_irq_n_s1_master_qreq_vector;
  wire             hdmi_rx_irq_n_s1_non_bursting_master_requests;
  wire             hdmi_rx_irq_n_s1_readdata_from_sa;
  reg              hdmi_rx_irq_n_s1_reg_firsttransfer;
  wire             hdmi_rx_irq_n_s1_reset_n;
  reg              hdmi_rx_irq_n_s1_slavearbiterlockenable;
  wire             hdmi_rx_irq_n_s1_slavearbiterlockenable2;
  wire             hdmi_rx_irq_n_s1_unreg_firsttransfer;
  wire             hdmi_rx_irq_n_s1_waits_for_read;
  wire             hdmi_rx_irq_n_s1_waits_for_write;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_irq_n_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_irq_n_s1_end_xfer;
    end


  assign hdmi_rx_irq_n_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1));
  //assign hdmi_rx_irq_n_s1_readdata_from_sa = hdmi_rx_irq_n_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_irq_n_s1_readdata_from_sa = hdmi_rx_irq_n_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1 = (({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'hb0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write)) & clock_crossing_bridge_m1_read;
  //hdmi_rx_irq_n_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_irq_n_s1_arb_share_set_values = 1;

  //hdmi_rx_irq_n_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_irq_n_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;

  //hdmi_rx_irq_n_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_irq_n_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_irq_n_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_irq_n_s1_arb_share_counter_next_value = hdmi_rx_irq_n_s1_firsttransfer ? (hdmi_rx_irq_n_s1_arb_share_set_values - 1) : |hdmi_rx_irq_n_s1_arb_share_counter ? (hdmi_rx_irq_n_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_irq_n_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_irq_n_s1_allgrants = |hdmi_rx_irq_n_s1_grant_vector;

  //hdmi_rx_irq_n_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_irq_n_s1_end_xfer = ~(hdmi_rx_irq_n_s1_waits_for_read | hdmi_rx_irq_n_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1 = hdmi_rx_irq_n_s1_end_xfer & (~hdmi_rx_irq_n_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_irq_n_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_irq_n_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1 & hdmi_rx_irq_n_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1 & ~hdmi_rx_irq_n_s1_non_bursting_master_requests);

  //hdmi_rx_irq_n_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_irq_n_s1_arb_share_counter <= 0;
      else if (hdmi_rx_irq_n_s1_arb_counter_enable)
          hdmi_rx_irq_n_s1_arb_share_counter <= hdmi_rx_irq_n_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_irq_n_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_irq_n_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_irq_n_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_irq_n_s1 & ~hdmi_rx_irq_n_s1_non_bursting_master_requests))
          hdmi_rx_irq_n_s1_slavearbiterlockenable <= |hdmi_rx_irq_n_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_irq_n/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_irq_n_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_irq_n_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_irq_n_s1_slavearbiterlockenable2 = |hdmi_rx_irq_n_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_irq_n/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_irq_n_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_irq_n_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_irq_n_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_irq_n_s1_waits_for_read;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_irq_n/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_irq_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;

  //allow new arb cycle for hdmi_rx_irq_n/s1, which is an e_assign
  assign hdmi_rx_irq_n_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_irq_n_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_irq_n_s1_master_qreq_vector = 1;

  //hdmi_rx_irq_n_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_irq_n_s1_reset_n = reset_n;

  //hdmi_rx_irq_n_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_irq_n_s1_firsttransfer = hdmi_rx_irq_n_s1_begins_xfer ? hdmi_rx_irq_n_s1_unreg_firsttransfer : hdmi_rx_irq_n_s1_reg_firsttransfer;

  //hdmi_rx_irq_n_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_irq_n_s1_unreg_firsttransfer = ~(hdmi_rx_irq_n_s1_slavearbiterlockenable & hdmi_rx_irq_n_s1_any_continuerequest);

  //hdmi_rx_irq_n_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_irq_n_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_irq_n_s1_begins_xfer)
          hdmi_rx_irq_n_s1_reg_firsttransfer <= hdmi_rx_irq_n_s1_unreg_firsttransfer;
    end


  //hdmi_rx_irq_n_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_irq_n_s1_beginbursttransfer_internal = hdmi_rx_irq_n_s1_begins_xfer;

  //hdmi_rx_irq_n_s1_address mux, which is an e_mux
  assign hdmi_rx_irq_n_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_irq_n_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_irq_n_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_irq_n_s1_end_xfer <= hdmi_rx_irq_n_s1_end_xfer;
    end


  //hdmi_rx_irq_n_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_irq_n_s1_waits_for_read = hdmi_rx_irq_n_s1_in_a_read_cycle & hdmi_rx_irq_n_s1_begins_xfer;

  //hdmi_rx_irq_n_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_irq_n_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_irq_n_s1_in_a_read_cycle;

  //hdmi_rx_irq_n_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_irq_n_s1_waits_for_write = hdmi_rx_irq_n_s1_in_a_write_cycle & 0;

  //hdmi_rx_irq_n_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_irq_n_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_irq_n_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_irq_n_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_irq_n/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_reset_n_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_rx_reset_n_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1,
                                        d1_hdmi_rx_reset_n_s1_end_xfer,
                                        hdmi_rx_reset_n_s1_address,
                                        hdmi_rx_reset_n_s1_chipselect,
                                        hdmi_rx_reset_n_s1_readdata_from_sa,
                                        hdmi_rx_reset_n_s1_reset_n,
                                        hdmi_rx_reset_n_s1_write_n,
                                        hdmi_rx_reset_n_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;
  output           d1_hdmi_rx_reset_n_s1_end_xfer;
  output  [  1: 0] hdmi_rx_reset_n_s1_address;
  output           hdmi_rx_reset_n_s1_chipselect;
  output           hdmi_rx_reset_n_s1_readdata_from_sa;
  output           hdmi_rx_reset_n_s1_reset_n;
  output           hdmi_rx_reset_n_s1_write_n;
  output           hdmi_rx_reset_n_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx_reset_n_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_reset_n_s1;
  reg              d1_hdmi_rx_reset_n_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1;
  wire    [  1: 0] hdmi_rx_reset_n_s1_address;
  wire             hdmi_rx_reset_n_s1_allgrants;
  wire             hdmi_rx_reset_n_s1_allow_new_arb_cycle;
  wire             hdmi_rx_reset_n_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_reset_n_s1_any_continuerequest;
  wire             hdmi_rx_reset_n_s1_arb_counter_enable;
  reg              hdmi_rx_reset_n_s1_arb_share_counter;
  wire             hdmi_rx_reset_n_s1_arb_share_counter_next_value;
  wire             hdmi_rx_reset_n_s1_arb_share_set_values;
  wire             hdmi_rx_reset_n_s1_beginbursttransfer_internal;
  wire             hdmi_rx_reset_n_s1_begins_xfer;
  wire             hdmi_rx_reset_n_s1_chipselect;
  wire             hdmi_rx_reset_n_s1_end_xfer;
  wire             hdmi_rx_reset_n_s1_firsttransfer;
  wire             hdmi_rx_reset_n_s1_grant_vector;
  wire             hdmi_rx_reset_n_s1_in_a_read_cycle;
  wire             hdmi_rx_reset_n_s1_in_a_write_cycle;
  wire             hdmi_rx_reset_n_s1_master_qreq_vector;
  wire             hdmi_rx_reset_n_s1_non_bursting_master_requests;
  wire             hdmi_rx_reset_n_s1_readdata_from_sa;
  reg              hdmi_rx_reset_n_s1_reg_firsttransfer;
  wire             hdmi_rx_reset_n_s1_reset_n;
  reg              hdmi_rx_reset_n_s1_slavearbiterlockenable;
  wire             hdmi_rx_reset_n_s1_slavearbiterlockenable2;
  wire             hdmi_rx_reset_n_s1_unreg_firsttransfer;
  wire             hdmi_rx_reset_n_s1_waits_for_read;
  wire             hdmi_rx_reset_n_s1_waits_for_write;
  wire             hdmi_rx_reset_n_s1_write_n;
  wire             hdmi_rx_reset_n_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_reset_n_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_reset_n_s1_end_xfer;
    end


  assign hdmi_rx_reset_n_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1));
  //assign hdmi_rx_reset_n_s1_readdata_from_sa = hdmi_rx_reset_n_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_reset_n_s1_readdata_from_sa = hdmi_rx_reset_n_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h80) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_reset_n_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_reset_n_s1_arb_share_set_values = 1;

  //hdmi_rx_reset_n_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_reset_n_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;

  //hdmi_rx_reset_n_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_reset_n_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_reset_n_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_reset_n_s1_arb_share_counter_next_value = hdmi_rx_reset_n_s1_firsttransfer ? (hdmi_rx_reset_n_s1_arb_share_set_values - 1) : |hdmi_rx_reset_n_s1_arb_share_counter ? (hdmi_rx_reset_n_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_reset_n_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_reset_n_s1_allgrants = |hdmi_rx_reset_n_s1_grant_vector;

  //hdmi_rx_reset_n_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_reset_n_s1_end_xfer = ~(hdmi_rx_reset_n_s1_waits_for_read | hdmi_rx_reset_n_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1 = hdmi_rx_reset_n_s1_end_xfer & (~hdmi_rx_reset_n_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_reset_n_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_reset_n_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1 & hdmi_rx_reset_n_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1 & ~hdmi_rx_reset_n_s1_non_bursting_master_requests);

  //hdmi_rx_reset_n_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_reset_n_s1_arb_share_counter <= 0;
      else if (hdmi_rx_reset_n_s1_arb_counter_enable)
          hdmi_rx_reset_n_s1_arb_share_counter <= hdmi_rx_reset_n_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_reset_n_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_reset_n_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_reset_n_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_reset_n_s1 & ~hdmi_rx_reset_n_s1_non_bursting_master_requests))
          hdmi_rx_reset_n_s1_slavearbiterlockenable <= |hdmi_rx_reset_n_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_reset_n/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_reset_n_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_reset_n_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_reset_n_s1_slavearbiterlockenable2 = |hdmi_rx_reset_n_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_reset_n/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_reset_n_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_reset_n_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_reset_n_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_reset_n_s1_waits_for_read;

  //hdmi_rx_reset_n_s1_writedata mux, which is an e_mux
  assign hdmi_rx_reset_n_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_reset_n/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_reset_n_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;

  //allow new arb cycle for hdmi_rx_reset_n/s1, which is an e_assign
  assign hdmi_rx_reset_n_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_reset_n_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_reset_n_s1_master_qreq_vector = 1;

  //hdmi_rx_reset_n_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_reset_n_s1_reset_n = reset_n;

  assign hdmi_rx_reset_n_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1;
  //hdmi_rx_reset_n_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_reset_n_s1_firsttransfer = hdmi_rx_reset_n_s1_begins_xfer ? hdmi_rx_reset_n_s1_unreg_firsttransfer : hdmi_rx_reset_n_s1_reg_firsttransfer;

  //hdmi_rx_reset_n_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_reset_n_s1_unreg_firsttransfer = ~(hdmi_rx_reset_n_s1_slavearbiterlockenable & hdmi_rx_reset_n_s1_any_continuerequest);

  //hdmi_rx_reset_n_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_reset_n_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_reset_n_s1_begins_xfer)
          hdmi_rx_reset_n_s1_reg_firsttransfer <= hdmi_rx_reset_n_s1_unreg_firsttransfer;
    end


  //hdmi_rx_reset_n_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_reset_n_s1_beginbursttransfer_internal = hdmi_rx_reset_n_s1_begins_xfer;

  //~hdmi_rx_reset_n_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_reset_n_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_reset_n_s1_address mux, which is an e_mux
  assign hdmi_rx_reset_n_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_reset_n_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_reset_n_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_reset_n_s1_end_xfer <= hdmi_rx_reset_n_s1_end_xfer;
    end


  //hdmi_rx_reset_n_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_reset_n_s1_waits_for_read = hdmi_rx_reset_n_s1_in_a_read_cycle & hdmi_rx_reset_n_s1_begins_xfer;

  //hdmi_rx_reset_n_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_reset_n_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_reset_n_s1_in_a_read_cycle;

  //hdmi_rx_reset_n_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_reset_n_s1_waits_for_write = hdmi_rx_reset_n_s1_in_a_write_cycle & 0;

  //hdmi_rx_reset_n_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_reset_n_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_reset_n_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_reset_n_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_reset_n/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_rx_sync_s1_arbitrator (
                                    // inputs:
                                     clk,
                                     clock_crossing_bridge_m1_address_to_slave,
                                     clock_crossing_bridge_m1_latency_counter,
                                     clock_crossing_bridge_m1_nativeaddress,
                                     clock_crossing_bridge_m1_read,
                                     clock_crossing_bridge_m1_write,
                                     clock_crossing_bridge_m1_writedata,
                                     hdmi_rx_sync_s1_readdata,
                                     reset_n,

                                    // outputs:
                                     clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1,
                                     clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1,
                                     clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1,
                                     clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1,
                                     d1_hdmi_rx_sync_s1_end_xfer,
                                     hdmi_rx_sync_s1_address,
                                     hdmi_rx_sync_s1_chipselect,
                                     hdmi_rx_sync_s1_readdata_from_sa,
                                     hdmi_rx_sync_s1_reset_n,
                                     hdmi_rx_sync_s1_write_n,
                                     hdmi_rx_sync_s1_writedata
                                  )
;

  output           clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;
  output           d1_hdmi_rx_sync_s1_end_xfer;
  output  [  1: 0] hdmi_rx_sync_s1_address;
  output           hdmi_rx_sync_s1_chipselect;
  output           hdmi_rx_sync_s1_readdata_from_sa;
  output           hdmi_rx_sync_s1_reset_n;
  output           hdmi_rx_sync_s1_write_n;
  output           hdmi_rx_sync_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_rx_sync_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_rx_sync_s1;
  reg              d1_hdmi_rx_sync_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_rx_sync_s1;
  wire    [  1: 0] hdmi_rx_sync_s1_address;
  wire             hdmi_rx_sync_s1_allgrants;
  wire             hdmi_rx_sync_s1_allow_new_arb_cycle;
  wire             hdmi_rx_sync_s1_any_bursting_master_saved_grant;
  wire             hdmi_rx_sync_s1_any_continuerequest;
  wire             hdmi_rx_sync_s1_arb_counter_enable;
  reg              hdmi_rx_sync_s1_arb_share_counter;
  wire             hdmi_rx_sync_s1_arb_share_counter_next_value;
  wire             hdmi_rx_sync_s1_arb_share_set_values;
  wire             hdmi_rx_sync_s1_beginbursttransfer_internal;
  wire             hdmi_rx_sync_s1_begins_xfer;
  wire             hdmi_rx_sync_s1_chipselect;
  wire             hdmi_rx_sync_s1_end_xfer;
  wire             hdmi_rx_sync_s1_firsttransfer;
  wire             hdmi_rx_sync_s1_grant_vector;
  wire             hdmi_rx_sync_s1_in_a_read_cycle;
  wire             hdmi_rx_sync_s1_in_a_write_cycle;
  wire             hdmi_rx_sync_s1_master_qreq_vector;
  wire             hdmi_rx_sync_s1_non_bursting_master_requests;
  wire             hdmi_rx_sync_s1_readdata_from_sa;
  reg              hdmi_rx_sync_s1_reg_firsttransfer;
  wire             hdmi_rx_sync_s1_reset_n;
  reg              hdmi_rx_sync_s1_slavearbiterlockenable;
  wire             hdmi_rx_sync_s1_slavearbiterlockenable2;
  wire             hdmi_rx_sync_s1_unreg_firsttransfer;
  wire             hdmi_rx_sync_s1_waits_for_read;
  wire             hdmi_rx_sync_s1_waits_for_write;
  wire             hdmi_rx_sync_s1_write_n;
  wire             hdmi_rx_sync_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_rx_sync_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_rx_sync_s1_end_xfer;
    end


  assign hdmi_rx_sync_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1));
  //assign hdmi_rx_sync_s1_readdata_from_sa = hdmi_rx_sync_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_rx_sync_s1_readdata_from_sa = hdmi_rx_sync_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h120) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_rx_sync_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_rx_sync_s1_arb_share_set_values = 1;

  //hdmi_rx_sync_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_rx_sync_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;

  //hdmi_rx_sync_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_rx_sync_s1_any_bursting_master_saved_grant = 0;

  //hdmi_rx_sync_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_rx_sync_s1_arb_share_counter_next_value = hdmi_rx_sync_s1_firsttransfer ? (hdmi_rx_sync_s1_arb_share_set_values - 1) : |hdmi_rx_sync_s1_arb_share_counter ? (hdmi_rx_sync_s1_arb_share_counter - 1) : 0;

  //hdmi_rx_sync_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_rx_sync_s1_allgrants = |hdmi_rx_sync_s1_grant_vector;

  //hdmi_rx_sync_s1_end_xfer assignment, which is an e_assign
  assign hdmi_rx_sync_s1_end_xfer = ~(hdmi_rx_sync_s1_waits_for_read | hdmi_rx_sync_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_rx_sync_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_rx_sync_s1 = hdmi_rx_sync_s1_end_xfer & (~hdmi_rx_sync_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_rx_sync_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_rx_sync_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_rx_sync_s1 & hdmi_rx_sync_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_rx_sync_s1 & ~hdmi_rx_sync_s1_non_bursting_master_requests);

  //hdmi_rx_sync_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_sync_s1_arb_share_counter <= 0;
      else if (hdmi_rx_sync_s1_arb_counter_enable)
          hdmi_rx_sync_s1_arb_share_counter <= hdmi_rx_sync_s1_arb_share_counter_next_value;
    end


  //hdmi_rx_sync_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_sync_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_rx_sync_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_rx_sync_s1) | (end_xfer_arb_share_counter_term_hdmi_rx_sync_s1 & ~hdmi_rx_sync_s1_non_bursting_master_requests))
          hdmi_rx_sync_s1_slavearbiterlockenable <= |hdmi_rx_sync_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_rx_sync/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_rx_sync_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_sync_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_rx_sync_s1_slavearbiterlockenable2 = |hdmi_rx_sync_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_rx_sync/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_rx_sync_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_rx_sync_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_rx_sync_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1 = clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 & clock_crossing_bridge_m1_read & ~hdmi_rx_sync_s1_waits_for_read;

  //hdmi_rx_sync_s1_writedata mux, which is an e_mux
  assign hdmi_rx_sync_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_rx_sync/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_rx_sync_s1 = clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;

  //allow new arb cycle for hdmi_rx_sync/s1, which is an e_assign
  assign hdmi_rx_sync_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_rx_sync_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_rx_sync_s1_master_qreq_vector = 1;

  //hdmi_rx_sync_s1_reset_n assignment, which is an e_assign
  assign hdmi_rx_sync_s1_reset_n = reset_n;

  assign hdmi_rx_sync_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1;
  //hdmi_rx_sync_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_sync_s1_firsttransfer = hdmi_rx_sync_s1_begins_xfer ? hdmi_rx_sync_s1_unreg_firsttransfer : hdmi_rx_sync_s1_reg_firsttransfer;

  //hdmi_rx_sync_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_rx_sync_s1_unreg_firsttransfer = ~(hdmi_rx_sync_s1_slavearbiterlockenable & hdmi_rx_sync_s1_any_continuerequest);

  //hdmi_rx_sync_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_rx_sync_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_rx_sync_s1_begins_xfer)
          hdmi_rx_sync_s1_reg_firsttransfer <= hdmi_rx_sync_s1_unreg_firsttransfer;
    end


  //hdmi_rx_sync_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_rx_sync_s1_beginbursttransfer_internal = hdmi_rx_sync_s1_begins_xfer;

  //~hdmi_rx_sync_s1_write_n assignment, which is an e_mux
  assign hdmi_rx_sync_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 & clock_crossing_bridge_m1_write);

  //hdmi_rx_sync_s1_address mux, which is an e_mux
  assign hdmi_rx_sync_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_rx_sync_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_rx_sync_s1_end_xfer <= 1;
      else 
        d1_hdmi_rx_sync_s1_end_xfer <= hdmi_rx_sync_s1_end_xfer;
    end


  //hdmi_rx_sync_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_rx_sync_s1_waits_for_read = hdmi_rx_sync_s1_in_a_read_cycle & hdmi_rx_sync_s1_begins_xfer;

  //hdmi_rx_sync_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_rx_sync_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_rx_sync_s1_in_a_read_cycle;

  //hdmi_rx_sync_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_rx_sync_s1_waits_for_write = hdmi_rx_sync_s1_in_a_write_cycle & 0;

  //hdmi_rx_sync_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_rx_sync_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_rx_sync_s1_in_a_write_cycle;

  assign wait_for_hdmi_rx_sync_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_rx_sync/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_disp_mode_s1_arbitrator (
                                         // inputs:
                                          clk,
                                          clock_crossing_bridge_m1_address_to_slave,
                                          clock_crossing_bridge_m1_latency_counter,
                                          clock_crossing_bridge_m1_nativeaddress,
                                          clock_crossing_bridge_m1_read,
                                          clock_crossing_bridge_m1_write,
                                          clock_crossing_bridge_m1_writedata,
                                          hdmi_tx_disp_mode_s1_readdata,
                                          reset_n,

                                         // outputs:
                                          clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1,
                                          clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1,
                                          clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1,
                                          clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1,
                                          d1_hdmi_tx_disp_mode_s1_end_xfer,
                                          hdmi_tx_disp_mode_s1_address,
                                          hdmi_tx_disp_mode_s1_chipselect,
                                          hdmi_tx_disp_mode_s1_readdata_from_sa,
                                          hdmi_tx_disp_mode_s1_reset_n,
                                          hdmi_tx_disp_mode_s1_write_n,
                                          hdmi_tx_disp_mode_s1_writedata
                                       )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;
  output           d1_hdmi_tx_disp_mode_s1_end_xfer;
  output  [  1: 0] hdmi_tx_disp_mode_s1_address;
  output           hdmi_tx_disp_mode_s1_chipselect;
  output  [  3: 0] hdmi_tx_disp_mode_s1_readdata_from_sa;
  output           hdmi_tx_disp_mode_s1_reset_n;
  output           hdmi_tx_disp_mode_s1_write_n;
  output  [  3: 0] hdmi_tx_disp_mode_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input   [  3: 0] hdmi_tx_disp_mode_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_disp_mode_s1;
  reg              d1_hdmi_tx_disp_mode_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1;
  wire    [  1: 0] hdmi_tx_disp_mode_s1_address;
  wire             hdmi_tx_disp_mode_s1_allgrants;
  wire             hdmi_tx_disp_mode_s1_allow_new_arb_cycle;
  wire             hdmi_tx_disp_mode_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_disp_mode_s1_any_continuerequest;
  wire             hdmi_tx_disp_mode_s1_arb_counter_enable;
  reg              hdmi_tx_disp_mode_s1_arb_share_counter;
  wire             hdmi_tx_disp_mode_s1_arb_share_counter_next_value;
  wire             hdmi_tx_disp_mode_s1_arb_share_set_values;
  wire             hdmi_tx_disp_mode_s1_beginbursttransfer_internal;
  wire             hdmi_tx_disp_mode_s1_begins_xfer;
  wire             hdmi_tx_disp_mode_s1_chipselect;
  wire             hdmi_tx_disp_mode_s1_end_xfer;
  wire             hdmi_tx_disp_mode_s1_firsttransfer;
  wire             hdmi_tx_disp_mode_s1_grant_vector;
  wire             hdmi_tx_disp_mode_s1_in_a_read_cycle;
  wire             hdmi_tx_disp_mode_s1_in_a_write_cycle;
  wire             hdmi_tx_disp_mode_s1_master_qreq_vector;
  wire             hdmi_tx_disp_mode_s1_non_bursting_master_requests;
  wire    [  3: 0] hdmi_tx_disp_mode_s1_readdata_from_sa;
  reg              hdmi_tx_disp_mode_s1_reg_firsttransfer;
  wire             hdmi_tx_disp_mode_s1_reset_n;
  reg              hdmi_tx_disp_mode_s1_slavearbiterlockenable;
  wire             hdmi_tx_disp_mode_s1_slavearbiterlockenable2;
  wire             hdmi_tx_disp_mode_s1_unreg_firsttransfer;
  wire             hdmi_tx_disp_mode_s1_waits_for_read;
  wire             hdmi_tx_disp_mode_s1_waits_for_write;
  wire             hdmi_tx_disp_mode_s1_write_n;
  wire    [  3: 0] hdmi_tx_disp_mode_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_disp_mode_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_disp_mode_s1_end_xfer;
    end


  assign hdmi_tx_disp_mode_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1));
  //assign hdmi_tx_disp_mode_s1_readdata_from_sa = hdmi_tx_disp_mode_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_disp_mode_s1_readdata_from_sa = hdmi_tx_disp_mode_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h130) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_disp_mode_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_disp_mode_s1_arb_share_set_values = 1;

  //hdmi_tx_disp_mode_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_disp_mode_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;

  //hdmi_tx_disp_mode_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_disp_mode_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_disp_mode_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_disp_mode_s1_arb_share_counter_next_value = hdmi_tx_disp_mode_s1_firsttransfer ? (hdmi_tx_disp_mode_s1_arb_share_set_values - 1) : |hdmi_tx_disp_mode_s1_arb_share_counter ? (hdmi_tx_disp_mode_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_disp_mode_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_disp_mode_s1_allgrants = |hdmi_tx_disp_mode_s1_grant_vector;

  //hdmi_tx_disp_mode_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_disp_mode_s1_end_xfer = ~(hdmi_tx_disp_mode_s1_waits_for_read | hdmi_tx_disp_mode_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1 = hdmi_tx_disp_mode_s1_end_xfer & (~hdmi_tx_disp_mode_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_disp_mode_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_disp_mode_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1 & hdmi_tx_disp_mode_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1 & ~hdmi_tx_disp_mode_s1_non_bursting_master_requests);

  //hdmi_tx_disp_mode_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_disp_mode_s1_arb_share_counter <= 0;
      else if (hdmi_tx_disp_mode_s1_arb_counter_enable)
          hdmi_tx_disp_mode_s1_arb_share_counter <= hdmi_tx_disp_mode_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_disp_mode_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_disp_mode_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_disp_mode_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_disp_mode_s1 & ~hdmi_tx_disp_mode_s1_non_bursting_master_requests))
          hdmi_tx_disp_mode_s1_slavearbiterlockenable <= |hdmi_tx_disp_mode_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_disp_mode/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_disp_mode_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_disp_mode_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_disp_mode_s1_slavearbiterlockenable2 = |hdmi_tx_disp_mode_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_disp_mode/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_disp_mode_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_disp_mode_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_disp_mode_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_disp_mode_s1_waits_for_read;

  //hdmi_tx_disp_mode_s1_writedata mux, which is an e_mux
  assign hdmi_tx_disp_mode_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_disp_mode/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_disp_mode_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;

  //allow new arb cycle for hdmi_tx_disp_mode/s1, which is an e_assign
  assign hdmi_tx_disp_mode_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_disp_mode_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_disp_mode_s1_master_qreq_vector = 1;

  //hdmi_tx_disp_mode_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_disp_mode_s1_reset_n = reset_n;

  assign hdmi_tx_disp_mode_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1;
  //hdmi_tx_disp_mode_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_disp_mode_s1_firsttransfer = hdmi_tx_disp_mode_s1_begins_xfer ? hdmi_tx_disp_mode_s1_unreg_firsttransfer : hdmi_tx_disp_mode_s1_reg_firsttransfer;

  //hdmi_tx_disp_mode_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_disp_mode_s1_unreg_firsttransfer = ~(hdmi_tx_disp_mode_s1_slavearbiterlockenable & hdmi_tx_disp_mode_s1_any_continuerequest);

  //hdmi_tx_disp_mode_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_disp_mode_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_disp_mode_s1_begins_xfer)
          hdmi_tx_disp_mode_s1_reg_firsttransfer <= hdmi_tx_disp_mode_s1_unreg_firsttransfer;
    end


  //hdmi_tx_disp_mode_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_disp_mode_s1_beginbursttransfer_internal = hdmi_tx_disp_mode_s1_begins_xfer;

  //~hdmi_tx_disp_mode_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_disp_mode_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_disp_mode_s1_address mux, which is an e_mux
  assign hdmi_tx_disp_mode_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_disp_mode_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_disp_mode_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_disp_mode_s1_end_xfer <= hdmi_tx_disp_mode_s1_end_xfer;
    end


  //hdmi_tx_disp_mode_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_disp_mode_s1_waits_for_read = hdmi_tx_disp_mode_s1_in_a_read_cycle & hdmi_tx_disp_mode_s1_begins_xfer;

  //hdmi_tx_disp_mode_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_disp_mode_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_disp_mode_s1_in_a_read_cycle;

  //hdmi_tx_disp_mode_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_disp_mode_s1_waits_for_write = hdmi_tx_disp_mode_s1_in_a_write_cycle & 0;

  //hdmi_tx_disp_mode_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_disp_mode_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_disp_mode_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_disp_mode_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_disp_mode/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_i2c_scl_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_tx_i2c_scl_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1,
                                        d1_hdmi_tx_i2c_scl_s1_end_xfer,
                                        hdmi_tx_i2c_scl_s1_address,
                                        hdmi_tx_i2c_scl_s1_chipselect,
                                        hdmi_tx_i2c_scl_s1_readdata_from_sa,
                                        hdmi_tx_i2c_scl_s1_reset_n,
                                        hdmi_tx_i2c_scl_s1_write_n,
                                        hdmi_tx_i2c_scl_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;
  output           d1_hdmi_tx_i2c_scl_s1_end_xfer;
  output  [  1: 0] hdmi_tx_i2c_scl_s1_address;
  output           hdmi_tx_i2c_scl_s1_chipselect;
  output           hdmi_tx_i2c_scl_s1_readdata_from_sa;
  output           hdmi_tx_i2c_scl_s1_reset_n;
  output           hdmi_tx_i2c_scl_s1_write_n;
  output           hdmi_tx_i2c_scl_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_tx_i2c_scl_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_i2c_scl_s1;
  reg              d1_hdmi_tx_i2c_scl_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1;
  wire    [  1: 0] hdmi_tx_i2c_scl_s1_address;
  wire             hdmi_tx_i2c_scl_s1_allgrants;
  wire             hdmi_tx_i2c_scl_s1_allow_new_arb_cycle;
  wire             hdmi_tx_i2c_scl_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_i2c_scl_s1_any_continuerequest;
  wire             hdmi_tx_i2c_scl_s1_arb_counter_enable;
  reg              hdmi_tx_i2c_scl_s1_arb_share_counter;
  wire             hdmi_tx_i2c_scl_s1_arb_share_counter_next_value;
  wire             hdmi_tx_i2c_scl_s1_arb_share_set_values;
  wire             hdmi_tx_i2c_scl_s1_beginbursttransfer_internal;
  wire             hdmi_tx_i2c_scl_s1_begins_xfer;
  wire             hdmi_tx_i2c_scl_s1_chipselect;
  wire             hdmi_tx_i2c_scl_s1_end_xfer;
  wire             hdmi_tx_i2c_scl_s1_firsttransfer;
  wire             hdmi_tx_i2c_scl_s1_grant_vector;
  wire             hdmi_tx_i2c_scl_s1_in_a_read_cycle;
  wire             hdmi_tx_i2c_scl_s1_in_a_write_cycle;
  wire             hdmi_tx_i2c_scl_s1_master_qreq_vector;
  wire             hdmi_tx_i2c_scl_s1_non_bursting_master_requests;
  wire             hdmi_tx_i2c_scl_s1_readdata_from_sa;
  reg              hdmi_tx_i2c_scl_s1_reg_firsttransfer;
  wire             hdmi_tx_i2c_scl_s1_reset_n;
  reg              hdmi_tx_i2c_scl_s1_slavearbiterlockenable;
  wire             hdmi_tx_i2c_scl_s1_slavearbiterlockenable2;
  wire             hdmi_tx_i2c_scl_s1_unreg_firsttransfer;
  wire             hdmi_tx_i2c_scl_s1_waits_for_read;
  wire             hdmi_tx_i2c_scl_s1_waits_for_write;
  wire             hdmi_tx_i2c_scl_s1_write_n;
  wire             hdmi_tx_i2c_scl_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_i2c_scl_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_i2c_scl_s1_end_xfer;
    end


  assign hdmi_tx_i2c_scl_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1));
  //assign hdmi_tx_i2c_scl_s1_readdata_from_sa = hdmi_tx_i2c_scl_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_readdata_from_sa = hdmi_tx_i2c_scl_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h20) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_i2c_scl_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_arb_share_set_values = 1;

  //hdmi_tx_i2c_scl_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;

  //hdmi_tx_i2c_scl_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_i2c_scl_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_arb_share_counter_next_value = hdmi_tx_i2c_scl_s1_firsttransfer ? (hdmi_tx_i2c_scl_s1_arb_share_set_values - 1) : |hdmi_tx_i2c_scl_s1_arb_share_counter ? (hdmi_tx_i2c_scl_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_i2c_scl_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_allgrants = |hdmi_tx_i2c_scl_s1_grant_vector;

  //hdmi_tx_i2c_scl_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_end_xfer = ~(hdmi_tx_i2c_scl_s1_waits_for_read | hdmi_tx_i2c_scl_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1 = hdmi_tx_i2c_scl_s1_end_xfer & (~hdmi_tx_i2c_scl_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_i2c_scl_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1 & hdmi_tx_i2c_scl_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1 & ~hdmi_tx_i2c_scl_s1_non_bursting_master_requests);

  //hdmi_tx_i2c_scl_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_scl_s1_arb_share_counter <= 0;
      else if (hdmi_tx_i2c_scl_s1_arb_counter_enable)
          hdmi_tx_i2c_scl_s1_arb_share_counter <= hdmi_tx_i2c_scl_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_i2c_scl_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_scl_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_i2c_scl_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_i2c_scl_s1 & ~hdmi_tx_i2c_scl_s1_non_bursting_master_requests))
          hdmi_tx_i2c_scl_s1_slavearbiterlockenable <= |hdmi_tx_i2c_scl_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_i2c_scl/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_i2c_scl_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_i2c_scl_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_slavearbiterlockenable2 = |hdmi_tx_i2c_scl_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_i2c_scl/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_i2c_scl_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_i2c_scl_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_i2c_scl_s1_waits_for_read;

  //hdmi_tx_i2c_scl_s1_writedata mux, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_i2c_scl/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_i2c_scl_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;

  //allow new arb cycle for hdmi_tx_i2c_scl/s1, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_i2c_scl_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_i2c_scl_s1_master_qreq_vector = 1;

  //hdmi_tx_i2c_scl_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_reset_n = reset_n;

  assign hdmi_tx_i2c_scl_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1;
  //hdmi_tx_i2c_scl_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_firsttransfer = hdmi_tx_i2c_scl_s1_begins_xfer ? hdmi_tx_i2c_scl_s1_unreg_firsttransfer : hdmi_tx_i2c_scl_s1_reg_firsttransfer;

  //hdmi_tx_i2c_scl_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_unreg_firsttransfer = ~(hdmi_tx_i2c_scl_s1_slavearbiterlockenable & hdmi_tx_i2c_scl_s1_any_continuerequest);

  //hdmi_tx_i2c_scl_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_scl_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_i2c_scl_s1_begins_xfer)
          hdmi_tx_i2c_scl_s1_reg_firsttransfer <= hdmi_tx_i2c_scl_s1_unreg_firsttransfer;
    end


  //hdmi_tx_i2c_scl_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_beginbursttransfer_internal = hdmi_tx_i2c_scl_s1_begins_xfer;

  //~hdmi_tx_i2c_scl_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_i2c_scl_s1_address mux, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_i2c_scl_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_i2c_scl_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_i2c_scl_s1_end_xfer <= hdmi_tx_i2c_scl_s1_end_xfer;
    end


  //hdmi_tx_i2c_scl_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_waits_for_read = hdmi_tx_i2c_scl_s1_in_a_read_cycle & hdmi_tx_i2c_scl_s1_begins_xfer;

  //hdmi_tx_i2c_scl_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_i2c_scl_s1_in_a_read_cycle;

  //hdmi_tx_i2c_scl_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_i2c_scl_s1_waits_for_write = hdmi_tx_i2c_scl_s1_in_a_write_cycle & 0;

  //hdmi_tx_i2c_scl_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_i2c_scl_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_i2c_scl_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_i2c_scl_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_i2c_scl/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_i2c_sda_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_tx_i2c_sda_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1,
                                        d1_hdmi_tx_i2c_sda_s1_end_xfer,
                                        hdmi_tx_i2c_sda_s1_address,
                                        hdmi_tx_i2c_sda_s1_chipselect,
                                        hdmi_tx_i2c_sda_s1_readdata_from_sa,
                                        hdmi_tx_i2c_sda_s1_reset_n,
                                        hdmi_tx_i2c_sda_s1_write_n,
                                        hdmi_tx_i2c_sda_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;
  output           d1_hdmi_tx_i2c_sda_s1_end_xfer;
  output  [  1: 0] hdmi_tx_i2c_sda_s1_address;
  output           hdmi_tx_i2c_sda_s1_chipselect;
  output           hdmi_tx_i2c_sda_s1_readdata_from_sa;
  output           hdmi_tx_i2c_sda_s1_reset_n;
  output           hdmi_tx_i2c_sda_s1_write_n;
  output           hdmi_tx_i2c_sda_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_tx_i2c_sda_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_i2c_sda_s1;
  reg              d1_hdmi_tx_i2c_sda_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1;
  wire    [  1: 0] hdmi_tx_i2c_sda_s1_address;
  wire             hdmi_tx_i2c_sda_s1_allgrants;
  wire             hdmi_tx_i2c_sda_s1_allow_new_arb_cycle;
  wire             hdmi_tx_i2c_sda_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_i2c_sda_s1_any_continuerequest;
  wire             hdmi_tx_i2c_sda_s1_arb_counter_enable;
  reg              hdmi_tx_i2c_sda_s1_arb_share_counter;
  wire             hdmi_tx_i2c_sda_s1_arb_share_counter_next_value;
  wire             hdmi_tx_i2c_sda_s1_arb_share_set_values;
  wire             hdmi_tx_i2c_sda_s1_beginbursttransfer_internal;
  wire             hdmi_tx_i2c_sda_s1_begins_xfer;
  wire             hdmi_tx_i2c_sda_s1_chipselect;
  wire             hdmi_tx_i2c_sda_s1_end_xfer;
  wire             hdmi_tx_i2c_sda_s1_firsttransfer;
  wire             hdmi_tx_i2c_sda_s1_grant_vector;
  wire             hdmi_tx_i2c_sda_s1_in_a_read_cycle;
  wire             hdmi_tx_i2c_sda_s1_in_a_write_cycle;
  wire             hdmi_tx_i2c_sda_s1_master_qreq_vector;
  wire             hdmi_tx_i2c_sda_s1_non_bursting_master_requests;
  wire             hdmi_tx_i2c_sda_s1_readdata_from_sa;
  reg              hdmi_tx_i2c_sda_s1_reg_firsttransfer;
  wire             hdmi_tx_i2c_sda_s1_reset_n;
  reg              hdmi_tx_i2c_sda_s1_slavearbiterlockenable;
  wire             hdmi_tx_i2c_sda_s1_slavearbiterlockenable2;
  wire             hdmi_tx_i2c_sda_s1_unreg_firsttransfer;
  wire             hdmi_tx_i2c_sda_s1_waits_for_read;
  wire             hdmi_tx_i2c_sda_s1_waits_for_write;
  wire             hdmi_tx_i2c_sda_s1_write_n;
  wire             hdmi_tx_i2c_sda_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_i2c_sda_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_i2c_sda_s1_end_xfer;
    end


  assign hdmi_tx_i2c_sda_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1));
  //assign hdmi_tx_i2c_sda_s1_readdata_from_sa = hdmi_tx_i2c_sda_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_readdata_from_sa = hdmi_tx_i2c_sda_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h30) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_i2c_sda_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_arb_share_set_values = 1;

  //hdmi_tx_i2c_sda_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;

  //hdmi_tx_i2c_sda_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_i2c_sda_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_arb_share_counter_next_value = hdmi_tx_i2c_sda_s1_firsttransfer ? (hdmi_tx_i2c_sda_s1_arb_share_set_values - 1) : |hdmi_tx_i2c_sda_s1_arb_share_counter ? (hdmi_tx_i2c_sda_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_i2c_sda_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_allgrants = |hdmi_tx_i2c_sda_s1_grant_vector;

  //hdmi_tx_i2c_sda_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_end_xfer = ~(hdmi_tx_i2c_sda_s1_waits_for_read | hdmi_tx_i2c_sda_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1 = hdmi_tx_i2c_sda_s1_end_xfer & (~hdmi_tx_i2c_sda_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_i2c_sda_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1 & hdmi_tx_i2c_sda_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1 & ~hdmi_tx_i2c_sda_s1_non_bursting_master_requests);

  //hdmi_tx_i2c_sda_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_sda_s1_arb_share_counter <= 0;
      else if (hdmi_tx_i2c_sda_s1_arb_counter_enable)
          hdmi_tx_i2c_sda_s1_arb_share_counter <= hdmi_tx_i2c_sda_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_i2c_sda_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_sda_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_i2c_sda_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_i2c_sda_s1 & ~hdmi_tx_i2c_sda_s1_non_bursting_master_requests))
          hdmi_tx_i2c_sda_s1_slavearbiterlockenable <= |hdmi_tx_i2c_sda_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_i2c_sda/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_i2c_sda_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_i2c_sda_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_slavearbiterlockenable2 = |hdmi_tx_i2c_sda_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_i2c_sda/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_i2c_sda_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_i2c_sda_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_i2c_sda_s1_waits_for_read;

  //hdmi_tx_i2c_sda_s1_writedata mux, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_i2c_sda/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_i2c_sda_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;

  //allow new arb cycle for hdmi_tx_i2c_sda/s1, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_i2c_sda_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_i2c_sda_s1_master_qreq_vector = 1;

  //hdmi_tx_i2c_sda_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_reset_n = reset_n;

  assign hdmi_tx_i2c_sda_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1;
  //hdmi_tx_i2c_sda_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_firsttransfer = hdmi_tx_i2c_sda_s1_begins_xfer ? hdmi_tx_i2c_sda_s1_unreg_firsttransfer : hdmi_tx_i2c_sda_s1_reg_firsttransfer;

  //hdmi_tx_i2c_sda_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_unreg_firsttransfer = ~(hdmi_tx_i2c_sda_s1_slavearbiterlockenable & hdmi_tx_i2c_sda_s1_any_continuerequest);

  //hdmi_tx_i2c_sda_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_i2c_sda_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_i2c_sda_s1_begins_xfer)
          hdmi_tx_i2c_sda_s1_reg_firsttransfer <= hdmi_tx_i2c_sda_s1_unreg_firsttransfer;
    end


  //hdmi_tx_i2c_sda_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_beginbursttransfer_internal = hdmi_tx_i2c_sda_s1_begins_xfer;

  //~hdmi_tx_i2c_sda_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_i2c_sda_s1_address mux, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_i2c_sda_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_i2c_sda_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_i2c_sda_s1_end_xfer <= hdmi_tx_i2c_sda_s1_end_xfer;
    end


  //hdmi_tx_i2c_sda_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_waits_for_read = hdmi_tx_i2c_sda_s1_in_a_read_cycle & hdmi_tx_i2c_sda_s1_begins_xfer;

  //hdmi_tx_i2c_sda_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_i2c_sda_s1_in_a_read_cycle;

  //hdmi_tx_i2c_sda_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_i2c_sda_s1_waits_for_write = hdmi_tx_i2c_sda_s1_in_a_write_cycle & 0;

  //hdmi_tx_i2c_sda_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_i2c_sda_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_i2c_sda_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_i2c_sda_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_i2c_sda/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_irq_n_s1_arbitrator (
                                     // inputs:
                                      clk,
                                      clock_crossing_bridge_m1_address_to_slave,
                                      clock_crossing_bridge_m1_latency_counter,
                                      clock_crossing_bridge_m1_nativeaddress,
                                      clock_crossing_bridge_m1_read,
                                      clock_crossing_bridge_m1_write,
                                      clock_crossing_bridge_m1_writedata,
                                      hdmi_tx_irq_n_s1_irq,
                                      hdmi_tx_irq_n_s1_readdata,
                                      reset_n,

                                     // outputs:
                                      clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1,
                                      clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1,
                                      clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1,
                                      clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1,
                                      d1_hdmi_tx_irq_n_s1_end_xfer,
                                      hdmi_tx_irq_n_s1_address,
                                      hdmi_tx_irq_n_s1_chipselect,
                                      hdmi_tx_irq_n_s1_irq_from_sa,
                                      hdmi_tx_irq_n_s1_readdata_from_sa,
                                      hdmi_tx_irq_n_s1_reset_n,
                                      hdmi_tx_irq_n_s1_write_n,
                                      hdmi_tx_irq_n_s1_writedata
                                   )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;
  output           d1_hdmi_tx_irq_n_s1_end_xfer;
  output  [  1: 0] hdmi_tx_irq_n_s1_address;
  output           hdmi_tx_irq_n_s1_chipselect;
  output           hdmi_tx_irq_n_s1_irq_from_sa;
  output           hdmi_tx_irq_n_s1_readdata_from_sa;
  output           hdmi_tx_irq_n_s1_reset_n;
  output           hdmi_tx_irq_n_s1_write_n;
  output           hdmi_tx_irq_n_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_tx_irq_n_s1_irq;
  input            hdmi_tx_irq_n_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_irq_n_s1;
  reg              d1_hdmi_tx_irq_n_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1;
  wire    [  1: 0] hdmi_tx_irq_n_s1_address;
  wire             hdmi_tx_irq_n_s1_allgrants;
  wire             hdmi_tx_irq_n_s1_allow_new_arb_cycle;
  wire             hdmi_tx_irq_n_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_irq_n_s1_any_continuerequest;
  wire             hdmi_tx_irq_n_s1_arb_counter_enable;
  reg              hdmi_tx_irq_n_s1_arb_share_counter;
  wire             hdmi_tx_irq_n_s1_arb_share_counter_next_value;
  wire             hdmi_tx_irq_n_s1_arb_share_set_values;
  wire             hdmi_tx_irq_n_s1_beginbursttransfer_internal;
  wire             hdmi_tx_irq_n_s1_begins_xfer;
  wire             hdmi_tx_irq_n_s1_chipselect;
  wire             hdmi_tx_irq_n_s1_end_xfer;
  wire             hdmi_tx_irq_n_s1_firsttransfer;
  wire             hdmi_tx_irq_n_s1_grant_vector;
  wire             hdmi_tx_irq_n_s1_in_a_read_cycle;
  wire             hdmi_tx_irq_n_s1_in_a_write_cycle;
  wire             hdmi_tx_irq_n_s1_irq_from_sa;
  wire             hdmi_tx_irq_n_s1_master_qreq_vector;
  wire             hdmi_tx_irq_n_s1_non_bursting_master_requests;
  wire             hdmi_tx_irq_n_s1_readdata_from_sa;
  reg              hdmi_tx_irq_n_s1_reg_firsttransfer;
  wire             hdmi_tx_irq_n_s1_reset_n;
  reg              hdmi_tx_irq_n_s1_slavearbiterlockenable;
  wire             hdmi_tx_irq_n_s1_slavearbiterlockenable2;
  wire             hdmi_tx_irq_n_s1_unreg_firsttransfer;
  wire             hdmi_tx_irq_n_s1_waits_for_read;
  wire             hdmi_tx_irq_n_s1_waits_for_write;
  wire             hdmi_tx_irq_n_s1_write_n;
  wire             hdmi_tx_irq_n_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_irq_n_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_irq_n_s1_end_xfer;
    end


  assign hdmi_tx_irq_n_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1));
  //assign hdmi_tx_irq_n_s1_readdata_from_sa = hdmi_tx_irq_n_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_irq_n_s1_readdata_from_sa = hdmi_tx_irq_n_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h70) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_irq_n_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_irq_n_s1_arb_share_set_values = 1;

  //hdmi_tx_irq_n_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_irq_n_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;

  //hdmi_tx_irq_n_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_irq_n_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_irq_n_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_irq_n_s1_arb_share_counter_next_value = hdmi_tx_irq_n_s1_firsttransfer ? (hdmi_tx_irq_n_s1_arb_share_set_values - 1) : |hdmi_tx_irq_n_s1_arb_share_counter ? (hdmi_tx_irq_n_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_irq_n_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_irq_n_s1_allgrants = |hdmi_tx_irq_n_s1_grant_vector;

  //hdmi_tx_irq_n_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_irq_n_s1_end_xfer = ~(hdmi_tx_irq_n_s1_waits_for_read | hdmi_tx_irq_n_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1 = hdmi_tx_irq_n_s1_end_xfer & (~hdmi_tx_irq_n_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_irq_n_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_irq_n_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1 & hdmi_tx_irq_n_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1 & ~hdmi_tx_irq_n_s1_non_bursting_master_requests);

  //hdmi_tx_irq_n_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_irq_n_s1_arb_share_counter <= 0;
      else if (hdmi_tx_irq_n_s1_arb_counter_enable)
          hdmi_tx_irq_n_s1_arb_share_counter <= hdmi_tx_irq_n_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_irq_n_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_irq_n_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_irq_n_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_irq_n_s1 & ~hdmi_tx_irq_n_s1_non_bursting_master_requests))
          hdmi_tx_irq_n_s1_slavearbiterlockenable <= |hdmi_tx_irq_n_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_irq_n/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_irq_n_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_irq_n_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_irq_n_s1_slavearbiterlockenable2 = |hdmi_tx_irq_n_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_irq_n/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_irq_n_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_irq_n_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_irq_n_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_irq_n_s1_waits_for_read;

  //hdmi_tx_irq_n_s1_writedata mux, which is an e_mux
  assign hdmi_tx_irq_n_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_irq_n/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_irq_n_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;

  //allow new arb cycle for hdmi_tx_irq_n/s1, which is an e_assign
  assign hdmi_tx_irq_n_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_irq_n_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_irq_n_s1_master_qreq_vector = 1;

  //hdmi_tx_irq_n_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_irq_n_s1_reset_n = reset_n;

  assign hdmi_tx_irq_n_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1;
  //hdmi_tx_irq_n_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_irq_n_s1_firsttransfer = hdmi_tx_irq_n_s1_begins_xfer ? hdmi_tx_irq_n_s1_unreg_firsttransfer : hdmi_tx_irq_n_s1_reg_firsttransfer;

  //hdmi_tx_irq_n_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_irq_n_s1_unreg_firsttransfer = ~(hdmi_tx_irq_n_s1_slavearbiterlockenable & hdmi_tx_irq_n_s1_any_continuerequest);

  //hdmi_tx_irq_n_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_irq_n_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_irq_n_s1_begins_xfer)
          hdmi_tx_irq_n_s1_reg_firsttransfer <= hdmi_tx_irq_n_s1_unreg_firsttransfer;
    end


  //hdmi_tx_irq_n_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_irq_n_s1_beginbursttransfer_internal = hdmi_tx_irq_n_s1_begins_xfer;

  //~hdmi_tx_irq_n_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_irq_n_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_irq_n_s1_address mux, which is an e_mux
  assign hdmi_tx_irq_n_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_irq_n_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_irq_n_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_irq_n_s1_end_xfer <= hdmi_tx_irq_n_s1_end_xfer;
    end


  //hdmi_tx_irq_n_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_irq_n_s1_waits_for_read = hdmi_tx_irq_n_s1_in_a_read_cycle & hdmi_tx_irq_n_s1_begins_xfer;

  //hdmi_tx_irq_n_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_irq_n_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_irq_n_s1_in_a_read_cycle;

  //hdmi_tx_irq_n_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_irq_n_s1_waits_for_write = hdmi_tx_irq_n_s1_in_a_write_cycle & 0;

  //hdmi_tx_irq_n_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_irq_n_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_irq_n_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_irq_n_s1_counter = 0;
  //assign hdmi_tx_irq_n_s1_irq_from_sa = hdmi_tx_irq_n_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_irq_n_s1_irq_from_sa = hdmi_tx_irq_n_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_irq_n/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_mode_change_s1_arbitrator (
                                           // inputs:
                                            clk,
                                            clock_crossing_bridge_m1_address_to_slave,
                                            clock_crossing_bridge_m1_latency_counter,
                                            clock_crossing_bridge_m1_nativeaddress,
                                            clock_crossing_bridge_m1_read,
                                            clock_crossing_bridge_m1_write,
                                            clock_crossing_bridge_m1_writedata,
                                            hdmi_tx_mode_change_s1_readdata,
                                            reset_n,

                                           // outputs:
                                            clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1,
                                            clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1,
                                            clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1,
                                            clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1,
                                            d1_hdmi_tx_mode_change_s1_end_xfer,
                                            hdmi_tx_mode_change_s1_address,
                                            hdmi_tx_mode_change_s1_chipselect,
                                            hdmi_tx_mode_change_s1_readdata_from_sa,
                                            hdmi_tx_mode_change_s1_reset_n,
                                            hdmi_tx_mode_change_s1_write_n,
                                            hdmi_tx_mode_change_s1_writedata
                                         )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;
  output           d1_hdmi_tx_mode_change_s1_end_xfer;
  output  [  1: 0] hdmi_tx_mode_change_s1_address;
  output           hdmi_tx_mode_change_s1_chipselect;
  output           hdmi_tx_mode_change_s1_readdata_from_sa;
  output           hdmi_tx_mode_change_s1_reset_n;
  output           hdmi_tx_mode_change_s1_write_n;
  output           hdmi_tx_mode_change_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_tx_mode_change_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_mode_change_s1;
  reg              d1_hdmi_tx_mode_change_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1;
  wire    [  1: 0] hdmi_tx_mode_change_s1_address;
  wire             hdmi_tx_mode_change_s1_allgrants;
  wire             hdmi_tx_mode_change_s1_allow_new_arb_cycle;
  wire             hdmi_tx_mode_change_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_mode_change_s1_any_continuerequest;
  wire             hdmi_tx_mode_change_s1_arb_counter_enable;
  reg              hdmi_tx_mode_change_s1_arb_share_counter;
  wire             hdmi_tx_mode_change_s1_arb_share_counter_next_value;
  wire             hdmi_tx_mode_change_s1_arb_share_set_values;
  wire             hdmi_tx_mode_change_s1_beginbursttransfer_internal;
  wire             hdmi_tx_mode_change_s1_begins_xfer;
  wire             hdmi_tx_mode_change_s1_chipselect;
  wire             hdmi_tx_mode_change_s1_end_xfer;
  wire             hdmi_tx_mode_change_s1_firsttransfer;
  wire             hdmi_tx_mode_change_s1_grant_vector;
  wire             hdmi_tx_mode_change_s1_in_a_read_cycle;
  wire             hdmi_tx_mode_change_s1_in_a_write_cycle;
  wire             hdmi_tx_mode_change_s1_master_qreq_vector;
  wire             hdmi_tx_mode_change_s1_non_bursting_master_requests;
  wire             hdmi_tx_mode_change_s1_readdata_from_sa;
  reg              hdmi_tx_mode_change_s1_reg_firsttransfer;
  wire             hdmi_tx_mode_change_s1_reset_n;
  reg              hdmi_tx_mode_change_s1_slavearbiterlockenable;
  wire             hdmi_tx_mode_change_s1_slavearbiterlockenable2;
  wire             hdmi_tx_mode_change_s1_unreg_firsttransfer;
  wire             hdmi_tx_mode_change_s1_waits_for_read;
  wire             hdmi_tx_mode_change_s1_waits_for_write;
  wire             hdmi_tx_mode_change_s1_write_n;
  wire             hdmi_tx_mode_change_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_mode_change_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_mode_change_s1_end_xfer;
    end


  assign hdmi_tx_mode_change_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1));
  //assign hdmi_tx_mode_change_s1_readdata_from_sa = hdmi_tx_mode_change_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_mode_change_s1_readdata_from_sa = hdmi_tx_mode_change_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h140) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_mode_change_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_mode_change_s1_arb_share_set_values = 1;

  //hdmi_tx_mode_change_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_mode_change_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;

  //hdmi_tx_mode_change_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_mode_change_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_mode_change_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_mode_change_s1_arb_share_counter_next_value = hdmi_tx_mode_change_s1_firsttransfer ? (hdmi_tx_mode_change_s1_arb_share_set_values - 1) : |hdmi_tx_mode_change_s1_arb_share_counter ? (hdmi_tx_mode_change_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_mode_change_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_mode_change_s1_allgrants = |hdmi_tx_mode_change_s1_grant_vector;

  //hdmi_tx_mode_change_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_mode_change_s1_end_xfer = ~(hdmi_tx_mode_change_s1_waits_for_read | hdmi_tx_mode_change_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1 = hdmi_tx_mode_change_s1_end_xfer & (~hdmi_tx_mode_change_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_mode_change_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_mode_change_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1 & hdmi_tx_mode_change_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1 & ~hdmi_tx_mode_change_s1_non_bursting_master_requests);

  //hdmi_tx_mode_change_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_mode_change_s1_arb_share_counter <= 0;
      else if (hdmi_tx_mode_change_s1_arb_counter_enable)
          hdmi_tx_mode_change_s1_arb_share_counter <= hdmi_tx_mode_change_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_mode_change_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_mode_change_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_mode_change_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_mode_change_s1 & ~hdmi_tx_mode_change_s1_non_bursting_master_requests))
          hdmi_tx_mode_change_s1_slavearbiterlockenable <= |hdmi_tx_mode_change_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_mode_change/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_mode_change_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_mode_change_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_mode_change_s1_slavearbiterlockenable2 = |hdmi_tx_mode_change_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_mode_change/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_mode_change_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_mode_change_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_mode_change_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_mode_change_s1_waits_for_read;

  //hdmi_tx_mode_change_s1_writedata mux, which is an e_mux
  assign hdmi_tx_mode_change_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_mode_change/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_mode_change_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;

  //allow new arb cycle for hdmi_tx_mode_change/s1, which is an e_assign
  assign hdmi_tx_mode_change_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_mode_change_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_mode_change_s1_master_qreq_vector = 1;

  //hdmi_tx_mode_change_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_mode_change_s1_reset_n = reset_n;

  assign hdmi_tx_mode_change_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1;
  //hdmi_tx_mode_change_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_mode_change_s1_firsttransfer = hdmi_tx_mode_change_s1_begins_xfer ? hdmi_tx_mode_change_s1_unreg_firsttransfer : hdmi_tx_mode_change_s1_reg_firsttransfer;

  //hdmi_tx_mode_change_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_mode_change_s1_unreg_firsttransfer = ~(hdmi_tx_mode_change_s1_slavearbiterlockenable & hdmi_tx_mode_change_s1_any_continuerequest);

  //hdmi_tx_mode_change_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_mode_change_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_mode_change_s1_begins_xfer)
          hdmi_tx_mode_change_s1_reg_firsttransfer <= hdmi_tx_mode_change_s1_unreg_firsttransfer;
    end


  //hdmi_tx_mode_change_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_mode_change_s1_beginbursttransfer_internal = hdmi_tx_mode_change_s1_begins_xfer;

  //~hdmi_tx_mode_change_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_mode_change_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_mode_change_s1_address mux, which is an e_mux
  assign hdmi_tx_mode_change_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_mode_change_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_mode_change_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_mode_change_s1_end_xfer <= hdmi_tx_mode_change_s1_end_xfer;
    end


  //hdmi_tx_mode_change_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_mode_change_s1_waits_for_read = hdmi_tx_mode_change_s1_in_a_read_cycle & hdmi_tx_mode_change_s1_begins_xfer;

  //hdmi_tx_mode_change_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_mode_change_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_mode_change_s1_in_a_read_cycle;

  //hdmi_tx_mode_change_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_mode_change_s1_waits_for_write = hdmi_tx_mode_change_s1_in_a_write_cycle & 0;

  //hdmi_tx_mode_change_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_mode_change_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_mode_change_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_mode_change_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_mode_change/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_reset_n_s1_arbitrator (
                                       // inputs:
                                        clk,
                                        clock_crossing_bridge_m1_address_to_slave,
                                        clock_crossing_bridge_m1_latency_counter,
                                        clock_crossing_bridge_m1_nativeaddress,
                                        clock_crossing_bridge_m1_read,
                                        clock_crossing_bridge_m1_write,
                                        clock_crossing_bridge_m1_writedata,
                                        hdmi_tx_reset_n_s1_readdata,
                                        reset_n,

                                       // outputs:
                                        clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1,
                                        clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1,
                                        clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1,
                                        clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1,
                                        d1_hdmi_tx_reset_n_s1_end_xfer,
                                        hdmi_tx_reset_n_s1_address,
                                        hdmi_tx_reset_n_s1_chipselect,
                                        hdmi_tx_reset_n_s1_readdata_from_sa,
                                        hdmi_tx_reset_n_s1_reset_n,
                                        hdmi_tx_reset_n_s1_write_n,
                                        hdmi_tx_reset_n_s1_writedata
                                     )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;
  output           d1_hdmi_tx_reset_n_s1_end_xfer;
  output  [  1: 0] hdmi_tx_reset_n_s1_address;
  output           hdmi_tx_reset_n_s1_chipselect;
  output           hdmi_tx_reset_n_s1_readdata_from_sa;
  output           hdmi_tx_reset_n_s1_reset_n;
  output           hdmi_tx_reset_n_s1_write_n;
  output           hdmi_tx_reset_n_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            hdmi_tx_reset_n_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_reset_n_s1;
  reg              d1_hdmi_tx_reset_n_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1;
  wire    [  1: 0] hdmi_tx_reset_n_s1_address;
  wire             hdmi_tx_reset_n_s1_allgrants;
  wire             hdmi_tx_reset_n_s1_allow_new_arb_cycle;
  wire             hdmi_tx_reset_n_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_reset_n_s1_any_continuerequest;
  wire             hdmi_tx_reset_n_s1_arb_counter_enable;
  reg              hdmi_tx_reset_n_s1_arb_share_counter;
  wire             hdmi_tx_reset_n_s1_arb_share_counter_next_value;
  wire             hdmi_tx_reset_n_s1_arb_share_set_values;
  wire             hdmi_tx_reset_n_s1_beginbursttransfer_internal;
  wire             hdmi_tx_reset_n_s1_begins_xfer;
  wire             hdmi_tx_reset_n_s1_chipselect;
  wire             hdmi_tx_reset_n_s1_end_xfer;
  wire             hdmi_tx_reset_n_s1_firsttransfer;
  wire             hdmi_tx_reset_n_s1_grant_vector;
  wire             hdmi_tx_reset_n_s1_in_a_read_cycle;
  wire             hdmi_tx_reset_n_s1_in_a_write_cycle;
  wire             hdmi_tx_reset_n_s1_master_qreq_vector;
  wire             hdmi_tx_reset_n_s1_non_bursting_master_requests;
  wire             hdmi_tx_reset_n_s1_readdata_from_sa;
  reg              hdmi_tx_reset_n_s1_reg_firsttransfer;
  wire             hdmi_tx_reset_n_s1_reset_n;
  reg              hdmi_tx_reset_n_s1_slavearbiterlockenable;
  wire             hdmi_tx_reset_n_s1_slavearbiterlockenable2;
  wire             hdmi_tx_reset_n_s1_unreg_firsttransfer;
  wire             hdmi_tx_reset_n_s1_waits_for_read;
  wire             hdmi_tx_reset_n_s1_waits_for_write;
  wire             hdmi_tx_reset_n_s1_write_n;
  wire             hdmi_tx_reset_n_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_reset_n_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_reset_n_s1_end_xfer;
    end


  assign hdmi_tx_reset_n_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1));
  //assign hdmi_tx_reset_n_s1_readdata_from_sa = hdmi_tx_reset_n_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_reset_n_s1_readdata_from_sa = hdmi_tx_reset_n_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h60) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_reset_n_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_reset_n_s1_arb_share_set_values = 1;

  //hdmi_tx_reset_n_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_reset_n_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;

  //hdmi_tx_reset_n_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_reset_n_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_reset_n_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_reset_n_s1_arb_share_counter_next_value = hdmi_tx_reset_n_s1_firsttransfer ? (hdmi_tx_reset_n_s1_arb_share_set_values - 1) : |hdmi_tx_reset_n_s1_arb_share_counter ? (hdmi_tx_reset_n_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_reset_n_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_reset_n_s1_allgrants = |hdmi_tx_reset_n_s1_grant_vector;

  //hdmi_tx_reset_n_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_reset_n_s1_end_xfer = ~(hdmi_tx_reset_n_s1_waits_for_read | hdmi_tx_reset_n_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1 = hdmi_tx_reset_n_s1_end_xfer & (~hdmi_tx_reset_n_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_reset_n_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_reset_n_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1 & hdmi_tx_reset_n_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1 & ~hdmi_tx_reset_n_s1_non_bursting_master_requests);

  //hdmi_tx_reset_n_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_reset_n_s1_arb_share_counter <= 0;
      else if (hdmi_tx_reset_n_s1_arb_counter_enable)
          hdmi_tx_reset_n_s1_arb_share_counter <= hdmi_tx_reset_n_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_reset_n_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_reset_n_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_reset_n_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_reset_n_s1 & ~hdmi_tx_reset_n_s1_non_bursting_master_requests))
          hdmi_tx_reset_n_s1_slavearbiterlockenable <= |hdmi_tx_reset_n_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_reset_n/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_reset_n_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_reset_n_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_reset_n_s1_slavearbiterlockenable2 = |hdmi_tx_reset_n_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_reset_n/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_reset_n_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_reset_n_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_reset_n_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_reset_n_s1_waits_for_read;

  //hdmi_tx_reset_n_s1_writedata mux, which is an e_mux
  assign hdmi_tx_reset_n_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_reset_n/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_reset_n_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;

  //allow new arb cycle for hdmi_tx_reset_n/s1, which is an e_assign
  assign hdmi_tx_reset_n_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_reset_n_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_reset_n_s1_master_qreq_vector = 1;

  //hdmi_tx_reset_n_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_reset_n_s1_reset_n = reset_n;

  assign hdmi_tx_reset_n_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1;
  //hdmi_tx_reset_n_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_reset_n_s1_firsttransfer = hdmi_tx_reset_n_s1_begins_xfer ? hdmi_tx_reset_n_s1_unreg_firsttransfer : hdmi_tx_reset_n_s1_reg_firsttransfer;

  //hdmi_tx_reset_n_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_reset_n_s1_unreg_firsttransfer = ~(hdmi_tx_reset_n_s1_slavearbiterlockenable & hdmi_tx_reset_n_s1_any_continuerequest);

  //hdmi_tx_reset_n_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_reset_n_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_reset_n_s1_begins_xfer)
          hdmi_tx_reset_n_s1_reg_firsttransfer <= hdmi_tx_reset_n_s1_unreg_firsttransfer;
    end


  //hdmi_tx_reset_n_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_reset_n_s1_beginbursttransfer_internal = hdmi_tx_reset_n_s1_begins_xfer;

  //~hdmi_tx_reset_n_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_reset_n_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_reset_n_s1_address mux, which is an e_mux
  assign hdmi_tx_reset_n_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_reset_n_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_reset_n_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_reset_n_s1_end_xfer <= hdmi_tx_reset_n_s1_end_xfer;
    end


  //hdmi_tx_reset_n_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_reset_n_s1_waits_for_read = hdmi_tx_reset_n_s1_in_a_read_cycle & hdmi_tx_reset_n_s1_begins_xfer;

  //hdmi_tx_reset_n_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_reset_n_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_reset_n_s1_in_a_read_cycle;

  //hdmi_tx_reset_n_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_reset_n_s1_waits_for_write = hdmi_tx_reset_n_s1_in_a_write_cycle & 0;

  //hdmi_tx_reset_n_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_reset_n_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_reset_n_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_reset_n_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_reset_n/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module hdmi_tx_vpg_color_s1_arbitrator (
                                         // inputs:
                                          clk,
                                          clock_crossing_bridge_m1_address_to_slave,
                                          clock_crossing_bridge_m1_latency_counter,
                                          clock_crossing_bridge_m1_nativeaddress,
                                          clock_crossing_bridge_m1_read,
                                          clock_crossing_bridge_m1_write,
                                          clock_crossing_bridge_m1_writedata,
                                          hdmi_tx_vpg_color_s1_readdata,
                                          reset_n,

                                         // outputs:
                                          clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1,
                                          clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1,
                                          clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1,
                                          clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1,
                                          d1_hdmi_tx_vpg_color_s1_end_xfer,
                                          hdmi_tx_vpg_color_s1_address,
                                          hdmi_tx_vpg_color_s1_chipselect,
                                          hdmi_tx_vpg_color_s1_readdata_from_sa,
                                          hdmi_tx_vpg_color_s1_reset_n,
                                          hdmi_tx_vpg_color_s1_write_n,
                                          hdmi_tx_vpg_color_s1_writedata
                                       )
;

  output           clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1;
  output           clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1;
  output           clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1;
  output           clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;
  output           d1_hdmi_tx_vpg_color_s1_end_xfer;
  output  [  1: 0] hdmi_tx_vpg_color_s1_address;
  output           hdmi_tx_vpg_color_s1_chipselect;
  output  [  1: 0] hdmi_tx_vpg_color_s1_readdata_from_sa;
  output           hdmi_tx_vpg_color_s1_reset_n;
  output           hdmi_tx_vpg_color_s1_write_n;
  output  [  1: 0] hdmi_tx_vpg_color_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input   [  1: 0] hdmi_tx_vpg_color_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_saved_grant_hdmi_tx_vpg_color_s1;
  reg              d1_hdmi_tx_vpg_color_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_address;
  wire             hdmi_tx_vpg_color_s1_allgrants;
  wire             hdmi_tx_vpg_color_s1_allow_new_arb_cycle;
  wire             hdmi_tx_vpg_color_s1_any_bursting_master_saved_grant;
  wire             hdmi_tx_vpg_color_s1_any_continuerequest;
  wire             hdmi_tx_vpg_color_s1_arb_counter_enable;
  reg              hdmi_tx_vpg_color_s1_arb_share_counter;
  wire             hdmi_tx_vpg_color_s1_arb_share_counter_next_value;
  wire             hdmi_tx_vpg_color_s1_arb_share_set_values;
  wire             hdmi_tx_vpg_color_s1_beginbursttransfer_internal;
  wire             hdmi_tx_vpg_color_s1_begins_xfer;
  wire             hdmi_tx_vpg_color_s1_chipselect;
  wire             hdmi_tx_vpg_color_s1_end_xfer;
  wire             hdmi_tx_vpg_color_s1_firsttransfer;
  wire             hdmi_tx_vpg_color_s1_grant_vector;
  wire             hdmi_tx_vpg_color_s1_in_a_read_cycle;
  wire             hdmi_tx_vpg_color_s1_in_a_write_cycle;
  wire             hdmi_tx_vpg_color_s1_master_qreq_vector;
  wire             hdmi_tx_vpg_color_s1_non_bursting_master_requests;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_readdata_from_sa;
  reg              hdmi_tx_vpg_color_s1_reg_firsttransfer;
  wire             hdmi_tx_vpg_color_s1_reset_n;
  reg              hdmi_tx_vpg_color_s1_slavearbiterlockenable;
  wire             hdmi_tx_vpg_color_s1_slavearbiterlockenable2;
  wire             hdmi_tx_vpg_color_s1_unreg_firsttransfer;
  wire             hdmi_tx_vpg_color_s1_waits_for_read;
  wire             hdmi_tx_vpg_color_s1_waits_for_write;
  wire             hdmi_tx_vpg_color_s1_write_n;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             wait_for_hdmi_tx_vpg_color_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~hdmi_tx_vpg_color_s1_end_xfer;
    end


  assign hdmi_tx_vpg_color_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1));
  //assign hdmi_tx_vpg_color_s1_readdata_from_sa = hdmi_tx_vpg_color_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign hdmi_tx_vpg_color_s1_readdata_from_sa = hdmi_tx_vpg_color_s1_readdata;

  assign clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h150) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //hdmi_tx_vpg_color_s1_arb_share_counter set values, which is an e_mux
  assign hdmi_tx_vpg_color_s1_arb_share_set_values = 1;

  //hdmi_tx_vpg_color_s1_non_bursting_master_requests mux, which is an e_mux
  assign hdmi_tx_vpg_color_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;

  //hdmi_tx_vpg_color_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign hdmi_tx_vpg_color_s1_any_bursting_master_saved_grant = 0;

  //hdmi_tx_vpg_color_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign hdmi_tx_vpg_color_s1_arb_share_counter_next_value = hdmi_tx_vpg_color_s1_firsttransfer ? (hdmi_tx_vpg_color_s1_arb_share_set_values - 1) : |hdmi_tx_vpg_color_s1_arb_share_counter ? (hdmi_tx_vpg_color_s1_arb_share_counter - 1) : 0;

  //hdmi_tx_vpg_color_s1_allgrants all slave grants, which is an e_mux
  assign hdmi_tx_vpg_color_s1_allgrants = |hdmi_tx_vpg_color_s1_grant_vector;

  //hdmi_tx_vpg_color_s1_end_xfer assignment, which is an e_assign
  assign hdmi_tx_vpg_color_s1_end_xfer = ~(hdmi_tx_vpg_color_s1_waits_for_read | hdmi_tx_vpg_color_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1 = hdmi_tx_vpg_color_s1_end_xfer & (~hdmi_tx_vpg_color_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //hdmi_tx_vpg_color_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign hdmi_tx_vpg_color_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1 & hdmi_tx_vpg_color_s1_allgrants) | (end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1 & ~hdmi_tx_vpg_color_s1_non_bursting_master_requests);

  //hdmi_tx_vpg_color_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_vpg_color_s1_arb_share_counter <= 0;
      else if (hdmi_tx_vpg_color_s1_arb_counter_enable)
          hdmi_tx_vpg_color_s1_arb_share_counter <= hdmi_tx_vpg_color_s1_arb_share_counter_next_value;
    end


  //hdmi_tx_vpg_color_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_vpg_color_s1_slavearbiterlockenable <= 0;
      else if ((|hdmi_tx_vpg_color_s1_master_qreq_vector & end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1) | (end_xfer_arb_share_counter_term_hdmi_tx_vpg_color_s1 & ~hdmi_tx_vpg_color_s1_non_bursting_master_requests))
          hdmi_tx_vpg_color_s1_slavearbiterlockenable <= |hdmi_tx_vpg_color_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 hdmi_tx_vpg_color/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = hdmi_tx_vpg_color_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_vpg_color_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign hdmi_tx_vpg_color_s1_slavearbiterlockenable2 = |hdmi_tx_vpg_color_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 hdmi_tx_vpg_color/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = hdmi_tx_vpg_color_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //hdmi_tx_vpg_color_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign hdmi_tx_vpg_color_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1 = clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 & clock_crossing_bridge_m1_read & ~hdmi_tx_vpg_color_s1_waits_for_read;

  //hdmi_tx_vpg_color_s1_writedata mux, which is an e_mux
  assign hdmi_tx_vpg_color_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 = clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1;

  //clock_crossing_bridge/m1 saved-grant hdmi_tx_vpg_color/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_hdmi_tx_vpg_color_s1 = clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;

  //allow new arb cycle for hdmi_tx_vpg_color/s1, which is an e_assign
  assign hdmi_tx_vpg_color_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign hdmi_tx_vpg_color_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign hdmi_tx_vpg_color_s1_master_qreq_vector = 1;

  //hdmi_tx_vpg_color_s1_reset_n assignment, which is an e_assign
  assign hdmi_tx_vpg_color_s1_reset_n = reset_n;

  assign hdmi_tx_vpg_color_s1_chipselect = clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1;
  //hdmi_tx_vpg_color_s1_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_vpg_color_s1_firsttransfer = hdmi_tx_vpg_color_s1_begins_xfer ? hdmi_tx_vpg_color_s1_unreg_firsttransfer : hdmi_tx_vpg_color_s1_reg_firsttransfer;

  //hdmi_tx_vpg_color_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign hdmi_tx_vpg_color_s1_unreg_firsttransfer = ~(hdmi_tx_vpg_color_s1_slavearbiterlockenable & hdmi_tx_vpg_color_s1_any_continuerequest);

  //hdmi_tx_vpg_color_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hdmi_tx_vpg_color_s1_reg_firsttransfer <= 1'b1;
      else if (hdmi_tx_vpg_color_s1_begins_xfer)
          hdmi_tx_vpg_color_s1_reg_firsttransfer <= hdmi_tx_vpg_color_s1_unreg_firsttransfer;
    end


  //hdmi_tx_vpg_color_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign hdmi_tx_vpg_color_s1_beginbursttransfer_internal = hdmi_tx_vpg_color_s1_begins_xfer;

  //~hdmi_tx_vpg_color_s1_write_n assignment, which is an e_mux
  assign hdmi_tx_vpg_color_s1_write_n = ~(clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 & clock_crossing_bridge_m1_write);

  //hdmi_tx_vpg_color_s1_address mux, which is an e_mux
  assign hdmi_tx_vpg_color_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_hdmi_tx_vpg_color_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_hdmi_tx_vpg_color_s1_end_xfer <= 1;
      else 
        d1_hdmi_tx_vpg_color_s1_end_xfer <= hdmi_tx_vpg_color_s1_end_xfer;
    end


  //hdmi_tx_vpg_color_s1_waits_for_read in a cycle, which is an e_mux
  assign hdmi_tx_vpg_color_s1_waits_for_read = hdmi_tx_vpg_color_s1_in_a_read_cycle & hdmi_tx_vpg_color_s1_begins_xfer;

  //hdmi_tx_vpg_color_s1_in_a_read_cycle assignment, which is an e_assign
  assign hdmi_tx_vpg_color_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = hdmi_tx_vpg_color_s1_in_a_read_cycle;

  //hdmi_tx_vpg_color_s1_waits_for_write in a cycle, which is an e_mux
  assign hdmi_tx_vpg_color_s1_waits_for_write = hdmi_tx_vpg_color_s1_in_a_write_cycle & 0;

  //hdmi_tx_vpg_color_s1_in_a_write_cycle assignment, which is an e_assign
  assign hdmi_tx_vpg_color_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = hdmi_tx_vpg_color_s1_in_a_write_cycle;

  assign wait_for_hdmi_tx_vpg_color_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //hdmi_tx_vpg_color/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module i2s_tx_slave_arbitrator (
                                 // inputs:
                                  clk,
                                  cpu_data_master_address_to_slave,
                                  cpu_data_master_read,
                                  cpu_data_master_waitrequest,
                                  cpu_data_master_write,
                                  cpu_data_master_writedata,
                                  i2s_tx_slave_irq,
                                  i2s_tx_slave_readdata,
                                  reset_n,

                                 // outputs:
                                  cpu_data_master_granted_i2s_tx_slave,
                                  cpu_data_master_qualified_request_i2s_tx_slave,
                                  cpu_data_master_read_data_valid_i2s_tx_slave,
                                  cpu_data_master_requests_i2s_tx_slave,
                                  d1_i2s_tx_slave_end_xfer,
                                  i2s_tx_slave_address,
                                  i2s_tx_slave_chipselect,
                                  i2s_tx_slave_irq_from_sa,
                                  i2s_tx_slave_read,
                                  i2s_tx_slave_readdata_from_sa,
                                  i2s_tx_slave_reset,
                                  i2s_tx_slave_write,
                                  i2s_tx_slave_writedata
                               )
;

  output           cpu_data_master_granted_i2s_tx_slave;
  output           cpu_data_master_qualified_request_i2s_tx_slave;
  output           cpu_data_master_read_data_valid_i2s_tx_slave;
  output           cpu_data_master_requests_i2s_tx_slave;
  output           d1_i2s_tx_slave_end_xfer;
  output  [  1: 0] i2s_tx_slave_address;
  output           i2s_tx_slave_chipselect;
  output           i2s_tx_slave_irq_from_sa;
  output           i2s_tx_slave_read;
  output  [ 31: 0] i2s_tx_slave_readdata_from_sa;
  output           i2s_tx_slave_reset;
  output           i2s_tx_slave_write;
  output  [ 31: 0] i2s_tx_slave_writedata;
  input            clk;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            i2s_tx_slave_irq;
  input   [ 31: 0] i2s_tx_slave_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_i2s_tx_slave;
  wire             cpu_data_master_qualified_request_i2s_tx_slave;
  wire             cpu_data_master_read_data_valid_i2s_tx_slave;
  wire             cpu_data_master_requests_i2s_tx_slave;
  wire             cpu_data_master_saved_grant_i2s_tx_slave;
  reg              d1_i2s_tx_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_i2s_tx_slave;
  wire    [  1: 0] i2s_tx_slave_address;
  wire             i2s_tx_slave_allgrants;
  wire             i2s_tx_slave_allow_new_arb_cycle;
  wire             i2s_tx_slave_any_bursting_master_saved_grant;
  wire             i2s_tx_slave_any_continuerequest;
  wire             i2s_tx_slave_arb_counter_enable;
  reg              i2s_tx_slave_arb_share_counter;
  wire             i2s_tx_slave_arb_share_counter_next_value;
  wire             i2s_tx_slave_arb_share_set_values;
  wire             i2s_tx_slave_beginbursttransfer_internal;
  wire             i2s_tx_slave_begins_xfer;
  wire             i2s_tx_slave_chipselect;
  wire             i2s_tx_slave_end_xfer;
  wire             i2s_tx_slave_firsttransfer;
  wire             i2s_tx_slave_grant_vector;
  wire             i2s_tx_slave_in_a_read_cycle;
  wire             i2s_tx_slave_in_a_write_cycle;
  wire             i2s_tx_slave_irq_from_sa;
  wire             i2s_tx_slave_master_qreq_vector;
  wire             i2s_tx_slave_non_bursting_master_requests;
  wire             i2s_tx_slave_read;
  wire    [ 31: 0] i2s_tx_slave_readdata_from_sa;
  reg              i2s_tx_slave_reg_firsttransfer;
  wire             i2s_tx_slave_reset;
  reg              i2s_tx_slave_slavearbiterlockenable;
  wire             i2s_tx_slave_slavearbiterlockenable2;
  wire             i2s_tx_slave_unreg_firsttransfer;
  wire             i2s_tx_slave_waits_for_read;
  wire             i2s_tx_slave_waits_for_write;
  wire             i2s_tx_slave_write;
  wire    [ 31: 0] i2s_tx_slave_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 24: 0] shifted_address_to_i2s_tx_slave_from_cpu_data_master;
  wire             wait_for_i2s_tx_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~i2s_tx_slave_end_xfer;
    end


  assign i2s_tx_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_i2s_tx_slave));
  //assign i2s_tx_slave_readdata_from_sa = i2s_tx_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign i2s_tx_slave_readdata_from_sa = i2s_tx_slave_readdata;

  assign cpu_data_master_requests_i2s_tx_slave = ({cpu_data_master_address_to_slave[24 : 4] , 4'b0} == 25'h1041010) & (cpu_data_master_read | cpu_data_master_write);
  //i2s_tx_slave_arb_share_counter set values, which is an e_mux
  assign i2s_tx_slave_arb_share_set_values = 1;

  //i2s_tx_slave_non_bursting_master_requests mux, which is an e_mux
  assign i2s_tx_slave_non_bursting_master_requests = cpu_data_master_requests_i2s_tx_slave;

  //i2s_tx_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign i2s_tx_slave_any_bursting_master_saved_grant = 0;

  //i2s_tx_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign i2s_tx_slave_arb_share_counter_next_value = i2s_tx_slave_firsttransfer ? (i2s_tx_slave_arb_share_set_values - 1) : |i2s_tx_slave_arb_share_counter ? (i2s_tx_slave_arb_share_counter - 1) : 0;

  //i2s_tx_slave_allgrants all slave grants, which is an e_mux
  assign i2s_tx_slave_allgrants = |i2s_tx_slave_grant_vector;

  //i2s_tx_slave_end_xfer assignment, which is an e_assign
  assign i2s_tx_slave_end_xfer = ~(i2s_tx_slave_waits_for_read | i2s_tx_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_i2s_tx_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_i2s_tx_slave = i2s_tx_slave_end_xfer & (~i2s_tx_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //i2s_tx_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign i2s_tx_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_i2s_tx_slave & i2s_tx_slave_allgrants) | (end_xfer_arb_share_counter_term_i2s_tx_slave & ~i2s_tx_slave_non_bursting_master_requests);

  //i2s_tx_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i2s_tx_slave_arb_share_counter <= 0;
      else if (i2s_tx_slave_arb_counter_enable)
          i2s_tx_slave_arb_share_counter <= i2s_tx_slave_arb_share_counter_next_value;
    end


  //i2s_tx_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i2s_tx_slave_slavearbiterlockenable <= 0;
      else if ((|i2s_tx_slave_master_qreq_vector & end_xfer_arb_share_counter_term_i2s_tx_slave) | (end_xfer_arb_share_counter_term_i2s_tx_slave & ~i2s_tx_slave_non_bursting_master_requests))
          i2s_tx_slave_slavearbiterlockenable <= |i2s_tx_slave_arb_share_counter_next_value;
    end


  //cpu/data_master i2s_tx/slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = i2s_tx_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //i2s_tx_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign i2s_tx_slave_slavearbiterlockenable2 = |i2s_tx_slave_arb_share_counter_next_value;

  //cpu/data_master i2s_tx/slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = i2s_tx_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //i2s_tx_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign i2s_tx_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_i2s_tx_slave = cpu_data_master_requests_i2s_tx_slave & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //i2s_tx_slave_writedata mux, which is an e_mux
  assign i2s_tx_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_i2s_tx_slave = cpu_data_master_qualified_request_i2s_tx_slave;

  //cpu/data_master saved-grant i2s_tx/slave, which is an e_assign
  assign cpu_data_master_saved_grant_i2s_tx_slave = cpu_data_master_requests_i2s_tx_slave;

  //allow new arb cycle for i2s_tx/slave, which is an e_assign
  assign i2s_tx_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign i2s_tx_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign i2s_tx_slave_master_qreq_vector = 1;

  //~i2s_tx_slave_reset assignment, which is an e_assign
  assign i2s_tx_slave_reset = ~reset_n;

  assign i2s_tx_slave_chipselect = cpu_data_master_granted_i2s_tx_slave;
  //i2s_tx_slave_firsttransfer first transaction, which is an e_assign
  assign i2s_tx_slave_firsttransfer = i2s_tx_slave_begins_xfer ? i2s_tx_slave_unreg_firsttransfer : i2s_tx_slave_reg_firsttransfer;

  //i2s_tx_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign i2s_tx_slave_unreg_firsttransfer = ~(i2s_tx_slave_slavearbiterlockenable & i2s_tx_slave_any_continuerequest);

  //i2s_tx_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i2s_tx_slave_reg_firsttransfer <= 1'b1;
      else if (i2s_tx_slave_begins_xfer)
          i2s_tx_slave_reg_firsttransfer <= i2s_tx_slave_unreg_firsttransfer;
    end


  //i2s_tx_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign i2s_tx_slave_beginbursttransfer_internal = i2s_tx_slave_begins_xfer;

  //i2s_tx_slave_read assignment, which is an e_mux
  assign i2s_tx_slave_read = cpu_data_master_granted_i2s_tx_slave & cpu_data_master_read;

  //i2s_tx_slave_write assignment, which is an e_mux
  assign i2s_tx_slave_write = cpu_data_master_granted_i2s_tx_slave & cpu_data_master_write;

  assign shifted_address_to_i2s_tx_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //i2s_tx_slave_address mux, which is an e_mux
  assign i2s_tx_slave_address = shifted_address_to_i2s_tx_slave_from_cpu_data_master >> 2;

  //d1_i2s_tx_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_i2s_tx_slave_end_xfer <= 1;
      else 
        d1_i2s_tx_slave_end_xfer <= i2s_tx_slave_end_xfer;
    end


  //i2s_tx_slave_waits_for_read in a cycle, which is an e_mux
  assign i2s_tx_slave_waits_for_read = i2s_tx_slave_in_a_read_cycle & i2s_tx_slave_begins_xfer;

  //i2s_tx_slave_in_a_read_cycle assignment, which is an e_assign
  assign i2s_tx_slave_in_a_read_cycle = cpu_data_master_granted_i2s_tx_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = i2s_tx_slave_in_a_read_cycle;

  //i2s_tx_slave_waits_for_write in a cycle, which is an e_mux
  assign i2s_tx_slave_waits_for_write = i2s_tx_slave_in_a_write_cycle & 0;

  //i2s_tx_slave_in_a_write_cycle assignment, which is an e_assign
  assign i2s_tx_slave_in_a_write_cycle = cpu_data_master_granted_i2s_tx_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = i2s_tx_slave_in_a_write_cycle;

  assign wait_for_i2s_tx_slave_counter = 0;
  //assign i2s_tx_slave_irq_from_sa = i2s_tx_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign i2s_tx_slave_irq_from_sa = i2s_tx_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //i2s_tx/slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module jtag_uart_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 clk,
                                                 cpu_data_master_address_to_slave,
                                                 cpu_data_master_read,
                                                 cpu_data_master_waitrequest,
                                                 cpu_data_master_write,
                                                 cpu_data_master_writedata,
                                                 jtag_uart_avalon_jtag_slave_dataavailable,
                                                 jtag_uart_avalon_jtag_slave_irq,
                                                 jtag_uart_avalon_jtag_slave_readdata,
                                                 jtag_uart_avalon_jtag_slave_readyfordata,
                                                 jtag_uart_avalon_jtag_slave_waitrequest,
                                                 reset_n,

                                                // outputs:
                                                 cpu_data_master_granted_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave,
                                                 cpu_data_master_requests_jtag_uart_avalon_jtag_slave,
                                                 d1_jtag_uart_avalon_jtag_slave_end_xfer,
                                                 jtag_uart_avalon_jtag_slave_address,
                                                 jtag_uart_avalon_jtag_slave_chipselect,
                                                 jtag_uart_avalon_jtag_slave_dataavailable_from_sa,
                                                 jtag_uart_avalon_jtag_slave_irq_from_sa,
                                                 jtag_uart_avalon_jtag_slave_read_n,
                                                 jtag_uart_avalon_jtag_slave_readdata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_readyfordata_from_sa,
                                                 jtag_uart_avalon_jtag_slave_reset_n,
                                                 jtag_uart_avalon_jtag_slave_waitrequest_from_sa,
                                                 jtag_uart_avalon_jtag_slave_write_n,
                                                 jtag_uart_avalon_jtag_slave_writedata
                                              )
;

  output           cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  output           cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  output           d1_jtag_uart_avalon_jtag_slave_end_xfer;
  output           jtag_uart_avalon_jtag_slave_address;
  output           jtag_uart_avalon_jtag_slave_chipselect;
  output           jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  output           jtag_uart_avalon_jtag_slave_irq_from_sa;
  output           jtag_uart_avalon_jtag_slave_read_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  output           jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  output           jtag_uart_avalon_jtag_slave_reset_n;
  output           jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  output           jtag_uart_avalon_jtag_slave_write_n;
  output  [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  input            clk;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            jtag_uart_avalon_jtag_slave_dataavailable;
  input            jtag_uart_avalon_jtag_slave_irq;
  input   [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  input            jtag_uart_avalon_jtag_slave_readyfordata;
  input            jtag_uart_avalon_jtag_slave_waitrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave;
  reg              d1_jtag_uart_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_allgrants;
  wire             jtag_uart_avalon_jtag_slave_allow_new_arb_cycle;
  wire             jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             jtag_uart_avalon_jtag_slave_any_continuerequest;
  wire             jtag_uart_avalon_jtag_slave_arb_counter_enable;
  reg              jtag_uart_avalon_jtag_slave_arb_share_counter;
  wire             jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
  wire             jtag_uart_avalon_jtag_slave_arb_share_set_values;
  wire             jtag_uart_avalon_jtag_slave_beginbursttransfer_internal;
  wire             jtag_uart_avalon_jtag_slave_begins_xfer;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_end_xfer;
  wire             jtag_uart_avalon_jtag_slave_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_grant_vector;
  wire             jtag_uart_avalon_jtag_slave_in_a_read_cycle;
  wire             jtag_uart_avalon_jtag_slave_in_a_write_cycle;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_master_qreq_vector;
  wire             jtag_uart_avalon_jtag_slave_non_bursting_master_requests;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  reg              jtag_uart_avalon_jtag_slave_reg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  reg              jtag_uart_avalon_jtag_slave_slavearbiterlockenable;
  wire             jtag_uart_avalon_jtag_slave_slavearbiterlockenable2;
  wire             jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_waits_for_read;
  wire             jtag_uart_avalon_jtag_slave_waits_for_write;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire    [ 24: 0] shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master;
  wire             wait_for_jtag_uart_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~jtag_uart_avalon_jtag_slave_end_xfer;
    end


  assign jtag_uart_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave));
  //assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readdata_from_sa = jtag_uart_avalon_jtag_slave_readdata;

  assign cpu_data_master_requests_jtag_uart_avalon_jtag_slave = ({cpu_data_master_address_to_slave[24 : 3] , 3'b0} == 25'h1041020) & (cpu_data_master_read | cpu_data_master_write);
  //assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_dataavailable_from_sa = jtag_uart_avalon_jtag_slave_dataavailable;

  //assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_readyfordata_from_sa = jtag_uart_avalon_jtag_slave_readyfordata;

  //assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_waitrequest_from_sa = jtag_uart_avalon_jtag_slave_waitrequest;

  //jtag_uart_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_arb_share_set_values = 1;

  //jtag_uart_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_non_bursting_master_requests = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //jtag_uart_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_share_counter_next_value = jtag_uart_avalon_jtag_slave_firsttransfer ? (jtag_uart_avalon_jtag_slave_arb_share_set_values - 1) : |jtag_uart_avalon_jtag_slave_arb_share_counter ? (jtag_uart_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //jtag_uart_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_allgrants = |jtag_uart_avalon_jtag_slave_grant_vector;

  //jtag_uart_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_end_xfer = ~(jtag_uart_avalon_jtag_slave_waits_for_read | jtag_uart_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave = jtag_uart_avalon_jtag_slave_end_xfer & (~jtag_uart_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //jtag_uart_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & jtag_uart_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests);

  //jtag_uart_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= 0;
      else if (jtag_uart_avalon_jtag_slave_arb_counter_enable)
          jtag_uart_avalon_jtag_slave_arb_share_counter <= jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|jtag_uart_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_jtag_uart_avalon_jtag_slave & ~jtag_uart_avalon_jtag_slave_non_bursting_master_requests))
          jtag_uart_avalon_jtag_slave_slavearbiterlockenable <= |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = jtag_uart_avalon_jtag_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 = |jtag_uart_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu/data_master jtag_uart/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = jtag_uart_avalon_jtag_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //jtag_uart_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave & ~((cpu_data_master_read & (~cpu_data_master_waitrequest)) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //jtag_uart_avalon_jtag_slave_writedata mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_jtag_uart_avalon_jtag_slave = cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;

  //cpu/data_master saved-grant jtag_uart/avalon_jtag_slave, which is an e_assign
  assign cpu_data_master_saved_grant_jtag_uart_avalon_jtag_slave = cpu_data_master_requests_jtag_uart_avalon_jtag_slave;

  //allow new arb cycle for jtag_uart/avalon_jtag_slave, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign jtag_uart_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign jtag_uart_avalon_jtag_slave_master_qreq_vector = 1;

  //jtag_uart_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_reset_n = reset_n;

  assign jtag_uart_avalon_jtag_slave_chipselect = cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  //jtag_uart_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_firsttransfer = jtag_uart_avalon_jtag_slave_begins_xfer ? jtag_uart_avalon_jtag_slave_unreg_firsttransfer : jtag_uart_avalon_jtag_slave_reg_firsttransfer;

  //jtag_uart_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_unreg_firsttransfer = ~(jtag_uart_avalon_jtag_slave_slavearbiterlockenable & jtag_uart_avalon_jtag_slave_any_continuerequest);

  //jtag_uart_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (jtag_uart_avalon_jtag_slave_begins_xfer)
          jtag_uart_avalon_jtag_slave_reg_firsttransfer <= jtag_uart_avalon_jtag_slave_unreg_firsttransfer;
    end


  //jtag_uart_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_beginbursttransfer_internal = jtag_uart_avalon_jtag_slave_begins_xfer;

  //~jtag_uart_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_read_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read);

  //~jtag_uart_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_write_n = ~(cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write);

  assign shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //jtag_uart_avalon_jtag_slave_address mux, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_address = shifted_address_to_jtag_uart_avalon_jtag_slave_from_cpu_data_master >> 2;

  //d1_jtag_uart_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_jtag_uart_avalon_jtag_slave_end_xfer <= 1;
      else 
        d1_jtag_uart_avalon_jtag_slave_end_xfer <= jtag_uart_avalon_jtag_slave_end_xfer;
    end


  //jtag_uart_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_read = jtag_uart_avalon_jtag_slave_in_a_read_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_read_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = jtag_uart_avalon_jtag_slave_in_a_read_cycle;

  //jtag_uart_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign jtag_uart_avalon_jtag_slave_waits_for_write = jtag_uart_avalon_jtag_slave_in_a_write_cycle & jtag_uart_avalon_jtag_slave_waitrequest_from_sa;

  //jtag_uart_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_in_a_write_cycle = cpu_data_master_granted_jtag_uart_avalon_jtag_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = jtag_uart_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_jtag_uart_avalon_jtag_slave_counter = 0;
  //assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign jtag_uart_avalon_jtag_slave_irq_from_sa = jtag_uart_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //jtag_uart/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module onchip_memory2_s1_arbitrator (
                                      // inputs:
                                       clk,
                                       cpu_data_master_address_to_slave,
                                       cpu_data_master_byteenable,
                                       cpu_data_master_read,
                                       cpu_data_master_waitrequest,
                                       cpu_data_master_write,
                                       cpu_data_master_writedata,
                                       cpu_instruction_master_address_to_slave,
                                       cpu_instruction_master_latency_counter,
                                       cpu_instruction_master_read,
                                       onchip_memory2_s1_readdata,
                                       reset_n,

                                      // outputs:
                                       cpu_data_master_granted_onchip_memory2_s1,
                                       cpu_data_master_qualified_request_onchip_memory2_s1,
                                       cpu_data_master_read_data_valid_onchip_memory2_s1,
                                       cpu_data_master_requests_onchip_memory2_s1,
                                       cpu_instruction_master_granted_onchip_memory2_s1,
                                       cpu_instruction_master_qualified_request_onchip_memory2_s1,
                                       cpu_instruction_master_read_data_valid_onchip_memory2_s1,
                                       cpu_instruction_master_requests_onchip_memory2_s1,
                                       d1_onchip_memory2_s1_end_xfer,
                                       onchip_memory2_s1_address,
                                       onchip_memory2_s1_byteenable,
                                       onchip_memory2_s1_chipselect,
                                       onchip_memory2_s1_clken,
                                       onchip_memory2_s1_readdata_from_sa,
                                       onchip_memory2_s1_write,
                                       onchip_memory2_s1_writedata,
                                       registered_cpu_data_master_read_data_valid_onchip_memory2_s1
                                    )
;

  output           cpu_data_master_granted_onchip_memory2_s1;
  output           cpu_data_master_qualified_request_onchip_memory2_s1;
  output           cpu_data_master_read_data_valid_onchip_memory2_s1;
  output           cpu_data_master_requests_onchip_memory2_s1;
  output           cpu_instruction_master_granted_onchip_memory2_s1;
  output           cpu_instruction_master_qualified_request_onchip_memory2_s1;
  output           cpu_instruction_master_read_data_valid_onchip_memory2_s1;
  output           cpu_instruction_master_requests_onchip_memory2_s1;
  output           d1_onchip_memory2_s1_end_xfer;
  output  [ 14: 0] onchip_memory2_s1_address;
  output  [  3: 0] onchip_memory2_s1_byteenable;
  output           onchip_memory2_s1_chipselect;
  output           onchip_memory2_s1_clken;
  output  [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  output           onchip_memory2_s1_write;
  output  [ 31: 0] onchip_memory2_s1_writedata;
  output           registered_cpu_data_master_read_data_valid_onchip_memory2_s1;
  input            clk;
  input   [ 24: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 24: 0] cpu_instruction_master_address_to_slave;
  input            cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] onchip_memory2_s1_readdata;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_onchip_memory2_s1;
  wire             cpu_data_master_qualified_request_onchip_memory2_s1;
  wire             cpu_data_master_read_data_valid_onchip_memory2_s1;
  reg              cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register_in;
  wire             cpu_data_master_requests_onchip_memory2_s1;
  wire             cpu_data_master_saved_grant_onchip_memory2_s1;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_onchip_memory2_s1;
  wire             cpu_instruction_master_qualified_request_onchip_memory2_s1;
  wire             cpu_instruction_master_read_data_valid_onchip_memory2_s1;
  reg              cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in;
  wire             cpu_instruction_master_requests_onchip_memory2_s1;
  wire             cpu_instruction_master_saved_grant_onchip_memory2_s1;
  reg              d1_onchip_memory2_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_onchip_memory2_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_onchip_memory2_s1;
  reg              last_cycle_cpu_instruction_master_granted_slave_onchip_memory2_s1;
  wire    [ 14: 0] onchip_memory2_s1_address;
  wire             onchip_memory2_s1_allgrants;
  wire             onchip_memory2_s1_allow_new_arb_cycle;
  wire             onchip_memory2_s1_any_bursting_master_saved_grant;
  wire             onchip_memory2_s1_any_continuerequest;
  reg     [  1: 0] onchip_memory2_s1_arb_addend;
  wire             onchip_memory2_s1_arb_counter_enable;
  reg              onchip_memory2_s1_arb_share_counter;
  wire             onchip_memory2_s1_arb_share_counter_next_value;
  wire             onchip_memory2_s1_arb_share_set_values;
  wire    [  1: 0] onchip_memory2_s1_arb_winner;
  wire             onchip_memory2_s1_arbitration_holdoff_internal;
  wire             onchip_memory2_s1_beginbursttransfer_internal;
  wire             onchip_memory2_s1_begins_xfer;
  wire    [  3: 0] onchip_memory2_s1_byteenable;
  wire             onchip_memory2_s1_chipselect;
  wire    [  3: 0] onchip_memory2_s1_chosen_master_double_vector;
  wire    [  1: 0] onchip_memory2_s1_chosen_master_rot_left;
  wire             onchip_memory2_s1_clken;
  wire             onchip_memory2_s1_end_xfer;
  wire             onchip_memory2_s1_firsttransfer;
  wire    [  1: 0] onchip_memory2_s1_grant_vector;
  wire             onchip_memory2_s1_in_a_read_cycle;
  wire             onchip_memory2_s1_in_a_write_cycle;
  wire    [  1: 0] onchip_memory2_s1_master_qreq_vector;
  wire             onchip_memory2_s1_non_bursting_master_requests;
  wire    [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  reg              onchip_memory2_s1_reg_firsttransfer;
  reg     [  1: 0] onchip_memory2_s1_saved_chosen_master_vector;
  reg              onchip_memory2_s1_slavearbiterlockenable;
  wire             onchip_memory2_s1_slavearbiterlockenable2;
  wire             onchip_memory2_s1_unreg_firsttransfer;
  wire             onchip_memory2_s1_waits_for_read;
  wire             onchip_memory2_s1_waits_for_write;
  wire             onchip_memory2_s1_write;
  wire    [ 31: 0] onchip_memory2_s1_writedata;
  wire             p1_cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             p1_cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
  wire             registered_cpu_data_master_read_data_valid_onchip_memory2_s1;
  wire    [ 24: 0] shifted_address_to_onchip_memory2_s1_from_cpu_data_master;
  wire    [ 24: 0] shifted_address_to_onchip_memory2_s1_from_cpu_instruction_master;
  wire             wait_for_onchip_memory2_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~onchip_memory2_s1_end_xfer;
    end


  assign onchip_memory2_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_onchip_memory2_s1 | cpu_instruction_master_qualified_request_onchip_memory2_s1));
  //assign onchip_memory2_s1_readdata_from_sa = onchip_memory2_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign onchip_memory2_s1_readdata_from_sa = onchip_memory2_s1_readdata;

  assign cpu_data_master_requests_onchip_memory2_s1 = ({cpu_data_master_address_to_slave[24 : 17] , 17'b0} == 25'h1020000) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_onchip_memory2_s1 assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_onchip_memory2_s1 = cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register_in;

  //onchip_memory2_s1_arb_share_counter set values, which is an e_mux
  assign onchip_memory2_s1_arb_share_set_values = 1;

  //onchip_memory2_s1_non_bursting_master_requests mux, which is an e_mux
  assign onchip_memory2_s1_non_bursting_master_requests = cpu_data_master_requests_onchip_memory2_s1 |
    cpu_instruction_master_requests_onchip_memory2_s1 |
    cpu_data_master_requests_onchip_memory2_s1 |
    cpu_instruction_master_requests_onchip_memory2_s1;

  //onchip_memory2_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign onchip_memory2_s1_any_bursting_master_saved_grant = 0;

  //onchip_memory2_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign onchip_memory2_s1_arb_share_counter_next_value = onchip_memory2_s1_firsttransfer ? (onchip_memory2_s1_arb_share_set_values - 1) : |onchip_memory2_s1_arb_share_counter ? (onchip_memory2_s1_arb_share_counter - 1) : 0;

  //onchip_memory2_s1_allgrants all slave grants, which is an e_mux
  assign onchip_memory2_s1_allgrants = (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector) |
    (|onchip_memory2_s1_grant_vector);

  //onchip_memory2_s1_end_xfer assignment, which is an e_assign
  assign onchip_memory2_s1_end_xfer = ~(onchip_memory2_s1_waits_for_read | onchip_memory2_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_onchip_memory2_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_onchip_memory2_s1 = onchip_memory2_s1_end_xfer & (~onchip_memory2_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //onchip_memory2_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign onchip_memory2_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_onchip_memory2_s1 & onchip_memory2_s1_allgrants) | (end_xfer_arb_share_counter_term_onchip_memory2_s1 & ~onchip_memory2_s1_non_bursting_master_requests);

  //onchip_memory2_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_arb_share_counter <= 0;
      else if (onchip_memory2_s1_arb_counter_enable)
          onchip_memory2_s1_arb_share_counter <= onchip_memory2_s1_arb_share_counter_next_value;
    end


  //onchip_memory2_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_slavearbiterlockenable <= 0;
      else if ((|onchip_memory2_s1_master_qreq_vector & end_xfer_arb_share_counter_term_onchip_memory2_s1) | (end_xfer_arb_share_counter_term_onchip_memory2_s1 & ~onchip_memory2_s1_non_bursting_master_requests))
          onchip_memory2_s1_slavearbiterlockenable <= |onchip_memory2_s1_arb_share_counter_next_value;
    end


  //cpu/data_master onchip_memory2/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = onchip_memory2_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //onchip_memory2_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign onchip_memory2_s1_slavearbiterlockenable2 = |onchip_memory2_s1_arb_share_counter_next_value;

  //cpu/data_master onchip_memory2/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = onchip_memory2_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master onchip_memory2/s1 arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = onchip_memory2_s1_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master onchip_memory2/s1 arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = onchip_memory2_s1_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted onchip_memory2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_onchip_memory2_s1 <= 0;
      else 
        last_cycle_cpu_instruction_master_granted_slave_onchip_memory2_s1 <= cpu_instruction_master_saved_grant_onchip_memory2_s1 ? 1 : (onchip_memory2_s1_arbitration_holdoff_internal | ~cpu_instruction_master_requests_onchip_memory2_s1) ? 0 : last_cycle_cpu_instruction_master_granted_slave_onchip_memory2_s1;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_onchip_memory2_s1 & cpu_instruction_master_requests_onchip_memory2_s1;

  //onchip_memory2_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign onchip_memory2_s1_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_onchip_memory2_s1 = cpu_data_master_requests_onchip_memory2_s1 & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register_in = cpu_data_master_granted_onchip_memory2_s1 & cpu_data_master_read & ~onchip_memory2_s1_waits_for_read & ~(|cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register = {cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register, cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register_in};

  //cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register <= 0;
      else 
        cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register <= p1_cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_onchip_memory2_s1, which is an e_mux
  assign cpu_data_master_read_data_valid_onchip_memory2_s1 = cpu_data_master_read_data_valid_onchip_memory2_s1_shift_register;

  //onchip_memory2_s1_writedata mux, which is an e_mux
  assign onchip_memory2_s1_writedata = cpu_data_master_writedata;

  //mux onchip_memory2_s1_clken, which is an e_mux
  assign onchip_memory2_s1_clken = 1'b1;

  assign cpu_instruction_master_requests_onchip_memory2_s1 = (({cpu_instruction_master_address_to_slave[24 : 17] , 17'b0} == 25'h1020000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted onchip_memory2/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_onchip_memory2_s1 <= 0;
      else 
        last_cycle_cpu_data_master_granted_slave_onchip_memory2_s1 <= cpu_data_master_saved_grant_onchip_memory2_s1 ? 1 : (onchip_memory2_s1_arbitration_holdoff_internal | ~cpu_data_master_requests_onchip_memory2_s1) ? 0 : last_cycle_cpu_data_master_granted_slave_onchip_memory2_s1;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_onchip_memory2_s1 & cpu_data_master_requests_onchip_memory2_s1;

  assign cpu_instruction_master_qualified_request_onchip_memory2_s1 = cpu_instruction_master_requests_onchip_memory2_s1 & ~((cpu_instruction_master_read & ((1 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in = cpu_instruction_master_granted_onchip_memory2_s1 & cpu_instruction_master_read & ~onchip_memory2_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register = {cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register, cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register <= 0;
      else 
        cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_onchip_memory2_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_onchip_memory2_s1 = cpu_instruction_master_read_data_valid_onchip_memory2_s1_shift_register;

  //allow new arb cycle for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_master_qreq_vector[0] = cpu_instruction_master_qualified_request_onchip_memory2_s1;

  //cpu/instruction_master grant onchip_memory2/s1, which is an e_assign
  assign cpu_instruction_master_granted_onchip_memory2_s1 = onchip_memory2_s1_grant_vector[0];

  //cpu/instruction_master saved-grant onchip_memory2/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_onchip_memory2_s1 = onchip_memory2_s1_arb_winner[0] && cpu_instruction_master_requests_onchip_memory2_s1;

  //cpu/data_master assignment into master qualified-requests vector for onchip_memory2/s1, which is an e_assign
  assign onchip_memory2_s1_master_qreq_vector[1] = cpu_data_master_qualified_request_onchip_memory2_s1;

  //cpu/data_master grant onchip_memory2/s1, which is an e_assign
  assign cpu_data_master_granted_onchip_memory2_s1 = onchip_memory2_s1_grant_vector[1];

  //cpu/data_master saved-grant onchip_memory2/s1, which is an e_assign
  assign cpu_data_master_saved_grant_onchip_memory2_s1 = onchip_memory2_s1_arb_winner[1] && cpu_data_master_requests_onchip_memory2_s1;

  //onchip_memory2/s1 chosen-master double-vector, which is an e_assign
  assign onchip_memory2_s1_chosen_master_double_vector = {onchip_memory2_s1_master_qreq_vector, onchip_memory2_s1_master_qreq_vector} & ({~onchip_memory2_s1_master_qreq_vector, ~onchip_memory2_s1_master_qreq_vector} + onchip_memory2_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign onchip_memory2_s1_arb_winner = (onchip_memory2_s1_allow_new_arb_cycle & | onchip_memory2_s1_grant_vector) ? onchip_memory2_s1_grant_vector : onchip_memory2_s1_saved_chosen_master_vector;

  //saved onchip_memory2_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_saved_chosen_master_vector <= 0;
      else if (onchip_memory2_s1_allow_new_arb_cycle)
          onchip_memory2_s1_saved_chosen_master_vector <= |onchip_memory2_s1_grant_vector ? onchip_memory2_s1_grant_vector : onchip_memory2_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign onchip_memory2_s1_grant_vector = {(onchip_memory2_s1_chosen_master_double_vector[1] | onchip_memory2_s1_chosen_master_double_vector[3]),
    (onchip_memory2_s1_chosen_master_double_vector[0] | onchip_memory2_s1_chosen_master_double_vector[2])};

  //onchip_memory2/s1 chosen master rotated left, which is an e_assign
  assign onchip_memory2_s1_chosen_master_rot_left = (onchip_memory2_s1_arb_winner << 1) ? (onchip_memory2_s1_arb_winner << 1) : 1;

  //onchip_memory2/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_arb_addend <= 1;
      else if (|onchip_memory2_s1_grant_vector)
          onchip_memory2_s1_arb_addend <= onchip_memory2_s1_end_xfer? onchip_memory2_s1_chosen_master_rot_left : onchip_memory2_s1_grant_vector;
    end


  assign onchip_memory2_s1_chipselect = cpu_data_master_granted_onchip_memory2_s1 | cpu_instruction_master_granted_onchip_memory2_s1;
  //onchip_memory2_s1_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_s1_firsttransfer = onchip_memory2_s1_begins_xfer ? onchip_memory2_s1_unreg_firsttransfer : onchip_memory2_s1_reg_firsttransfer;

  //onchip_memory2_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_s1_unreg_firsttransfer = ~(onchip_memory2_s1_slavearbiterlockenable & onchip_memory2_s1_any_continuerequest);

  //onchip_memory2_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_s1_reg_firsttransfer <= 1'b1;
      else if (onchip_memory2_s1_begins_xfer)
          onchip_memory2_s1_reg_firsttransfer <= onchip_memory2_s1_unreg_firsttransfer;
    end


  //onchip_memory2_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign onchip_memory2_s1_beginbursttransfer_internal = onchip_memory2_s1_begins_xfer;

  //onchip_memory2_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign onchip_memory2_s1_arbitration_holdoff_internal = onchip_memory2_s1_begins_xfer & onchip_memory2_s1_firsttransfer;

  //onchip_memory2_s1_write assignment, which is an e_mux
  assign onchip_memory2_s1_write = cpu_data_master_granted_onchip_memory2_s1 & cpu_data_master_write;

  assign shifted_address_to_onchip_memory2_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //onchip_memory2_s1_address mux, which is an e_mux
  assign onchip_memory2_s1_address = (cpu_data_master_granted_onchip_memory2_s1)? (shifted_address_to_onchip_memory2_s1_from_cpu_data_master >> 2) :
    (shifted_address_to_onchip_memory2_s1_from_cpu_instruction_master >> 2);

  assign shifted_address_to_onchip_memory2_s1_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_onchip_memory2_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_onchip_memory2_s1_end_xfer <= 1;
      else 
        d1_onchip_memory2_s1_end_xfer <= onchip_memory2_s1_end_xfer;
    end


  //onchip_memory2_s1_waits_for_read in a cycle, which is an e_mux
  assign onchip_memory2_s1_waits_for_read = onchip_memory2_s1_in_a_read_cycle & 0;

  //onchip_memory2_s1_in_a_read_cycle assignment, which is an e_assign
  assign onchip_memory2_s1_in_a_read_cycle = (cpu_data_master_granted_onchip_memory2_s1 & cpu_data_master_read) | (cpu_instruction_master_granted_onchip_memory2_s1 & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = onchip_memory2_s1_in_a_read_cycle;

  //onchip_memory2_s1_waits_for_write in a cycle, which is an e_mux
  assign onchip_memory2_s1_waits_for_write = onchip_memory2_s1_in_a_write_cycle & 0;

  //onchip_memory2_s1_in_a_write_cycle assignment, which is an e_assign
  assign onchip_memory2_s1_in_a_write_cycle = cpu_data_master_granted_onchip_memory2_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = onchip_memory2_s1_in_a_write_cycle;

  assign wait_for_onchip_memory2_s1_counter = 0;
  //onchip_memory2_s1_byteenable byte enable port mux, which is an e_mux
  assign onchip_memory2_s1_byteenable = (cpu_data_master_granted_onchip_memory2_s1)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //onchip_memory2/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_onchip_memory2_s1 + cpu_instruction_master_granted_onchip_memory2_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_onchip_memory2_s1 + cpu_instruction_master_saved_grant_onchip_memory2_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pio_button_s1_arbitrator (
                                  // inputs:
                                   clk,
                                   clock_crossing_bridge_m1_address_to_slave,
                                   clock_crossing_bridge_m1_latency_counter,
                                   clock_crossing_bridge_m1_nativeaddress,
                                   clock_crossing_bridge_m1_read,
                                   clock_crossing_bridge_m1_write,
                                   clock_crossing_bridge_m1_writedata,
                                   pio_button_s1_irq,
                                   pio_button_s1_readdata,
                                   reset_n,

                                  // outputs:
                                   clock_crossing_bridge_m1_granted_pio_button_s1,
                                   clock_crossing_bridge_m1_qualified_request_pio_button_s1,
                                   clock_crossing_bridge_m1_read_data_valid_pio_button_s1,
                                   clock_crossing_bridge_m1_requests_pio_button_s1,
                                   d1_pio_button_s1_end_xfer,
                                   pio_button_s1_address,
                                   pio_button_s1_chipselect,
                                   pio_button_s1_irq_from_sa,
                                   pio_button_s1_readdata_from_sa,
                                   pio_button_s1_reset_n,
                                   pio_button_s1_write_n,
                                   pio_button_s1_writedata
                                )
;

  output           clock_crossing_bridge_m1_granted_pio_button_s1;
  output           clock_crossing_bridge_m1_qualified_request_pio_button_s1;
  output           clock_crossing_bridge_m1_read_data_valid_pio_button_s1;
  output           clock_crossing_bridge_m1_requests_pio_button_s1;
  output           d1_pio_button_s1_end_xfer;
  output  [  1: 0] pio_button_s1_address;
  output           pio_button_s1_chipselect;
  output           pio_button_s1_irq_from_sa;
  output  [  1: 0] pio_button_s1_readdata_from_sa;
  output           pio_button_s1_reset_n;
  output           pio_button_s1_write_n;
  output  [  1: 0] pio_button_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            pio_button_s1_irq;
  input   [  1: 0] pio_button_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_pio_button_s1;
  wire             clock_crossing_bridge_m1_qualified_request_pio_button_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_pio_button_s1;
  wire             clock_crossing_bridge_m1_requests_pio_button_s1;
  wire             clock_crossing_bridge_m1_saved_grant_pio_button_s1;
  reg              d1_pio_button_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pio_button_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pio_button_s1_address;
  wire             pio_button_s1_allgrants;
  wire             pio_button_s1_allow_new_arb_cycle;
  wire             pio_button_s1_any_bursting_master_saved_grant;
  wire             pio_button_s1_any_continuerequest;
  wire             pio_button_s1_arb_counter_enable;
  reg              pio_button_s1_arb_share_counter;
  wire             pio_button_s1_arb_share_counter_next_value;
  wire             pio_button_s1_arb_share_set_values;
  wire             pio_button_s1_beginbursttransfer_internal;
  wire             pio_button_s1_begins_xfer;
  wire             pio_button_s1_chipselect;
  wire             pio_button_s1_end_xfer;
  wire             pio_button_s1_firsttransfer;
  wire             pio_button_s1_grant_vector;
  wire             pio_button_s1_in_a_read_cycle;
  wire             pio_button_s1_in_a_write_cycle;
  wire             pio_button_s1_irq_from_sa;
  wire             pio_button_s1_master_qreq_vector;
  wire             pio_button_s1_non_bursting_master_requests;
  wire    [  1: 0] pio_button_s1_readdata_from_sa;
  reg              pio_button_s1_reg_firsttransfer;
  wire             pio_button_s1_reset_n;
  reg              pio_button_s1_slavearbiterlockenable;
  wire             pio_button_s1_slavearbiterlockenable2;
  wire             pio_button_s1_unreg_firsttransfer;
  wire             pio_button_s1_waits_for_read;
  wire             pio_button_s1_waits_for_write;
  wire             pio_button_s1_write_n;
  wire    [  1: 0] pio_button_s1_writedata;
  wire             wait_for_pio_button_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pio_button_s1_end_xfer;
    end


  assign pio_button_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_pio_button_s1));
  //assign pio_button_s1_readdata_from_sa = pio_button_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pio_button_s1_readdata_from_sa = pio_button_s1_readdata;

  assign clock_crossing_bridge_m1_requests_pio_button_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'ha0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //pio_button_s1_arb_share_counter set values, which is an e_mux
  assign pio_button_s1_arb_share_set_values = 1;

  //pio_button_s1_non_bursting_master_requests mux, which is an e_mux
  assign pio_button_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_pio_button_s1;

  //pio_button_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign pio_button_s1_any_bursting_master_saved_grant = 0;

  //pio_button_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign pio_button_s1_arb_share_counter_next_value = pio_button_s1_firsttransfer ? (pio_button_s1_arb_share_set_values - 1) : |pio_button_s1_arb_share_counter ? (pio_button_s1_arb_share_counter - 1) : 0;

  //pio_button_s1_allgrants all slave grants, which is an e_mux
  assign pio_button_s1_allgrants = |pio_button_s1_grant_vector;

  //pio_button_s1_end_xfer assignment, which is an e_assign
  assign pio_button_s1_end_xfer = ~(pio_button_s1_waits_for_read | pio_button_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_pio_button_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pio_button_s1 = pio_button_s1_end_xfer & (~pio_button_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pio_button_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign pio_button_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_pio_button_s1 & pio_button_s1_allgrants) | (end_xfer_arb_share_counter_term_pio_button_s1 & ~pio_button_s1_non_bursting_master_requests);

  //pio_button_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_button_s1_arb_share_counter <= 0;
      else if (pio_button_s1_arb_counter_enable)
          pio_button_s1_arb_share_counter <= pio_button_s1_arb_share_counter_next_value;
    end


  //pio_button_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_button_s1_slavearbiterlockenable <= 0;
      else if ((|pio_button_s1_master_qreq_vector & end_xfer_arb_share_counter_term_pio_button_s1) | (end_xfer_arb_share_counter_term_pio_button_s1 & ~pio_button_s1_non_bursting_master_requests))
          pio_button_s1_slavearbiterlockenable <= |pio_button_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 pio_button/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = pio_button_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //pio_button_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pio_button_s1_slavearbiterlockenable2 = |pio_button_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 pio_button/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = pio_button_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //pio_button_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pio_button_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_pio_button_s1 = clock_crossing_bridge_m1_requests_pio_button_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_pio_button_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_pio_button_s1 = clock_crossing_bridge_m1_granted_pio_button_s1 & clock_crossing_bridge_m1_read & ~pio_button_s1_waits_for_read;

  //pio_button_s1_writedata mux, which is an e_mux
  assign pio_button_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_pio_button_s1 = clock_crossing_bridge_m1_qualified_request_pio_button_s1;

  //clock_crossing_bridge/m1 saved-grant pio_button/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_pio_button_s1 = clock_crossing_bridge_m1_requests_pio_button_s1;

  //allow new arb cycle for pio_button/s1, which is an e_assign
  assign pio_button_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pio_button_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pio_button_s1_master_qreq_vector = 1;

  //pio_button_s1_reset_n assignment, which is an e_assign
  assign pio_button_s1_reset_n = reset_n;

  assign pio_button_s1_chipselect = clock_crossing_bridge_m1_granted_pio_button_s1;
  //pio_button_s1_firsttransfer first transaction, which is an e_assign
  assign pio_button_s1_firsttransfer = pio_button_s1_begins_xfer ? pio_button_s1_unreg_firsttransfer : pio_button_s1_reg_firsttransfer;

  //pio_button_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign pio_button_s1_unreg_firsttransfer = ~(pio_button_s1_slavearbiterlockenable & pio_button_s1_any_continuerequest);

  //pio_button_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_button_s1_reg_firsttransfer <= 1'b1;
      else if (pio_button_s1_begins_xfer)
          pio_button_s1_reg_firsttransfer <= pio_button_s1_unreg_firsttransfer;
    end


  //pio_button_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pio_button_s1_beginbursttransfer_internal = pio_button_s1_begins_xfer;

  //~pio_button_s1_write_n assignment, which is an e_mux
  assign pio_button_s1_write_n = ~(clock_crossing_bridge_m1_granted_pio_button_s1 & clock_crossing_bridge_m1_write);

  //pio_button_s1_address mux, which is an e_mux
  assign pio_button_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_pio_button_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pio_button_s1_end_xfer <= 1;
      else 
        d1_pio_button_s1_end_xfer <= pio_button_s1_end_xfer;
    end


  //pio_button_s1_waits_for_read in a cycle, which is an e_mux
  assign pio_button_s1_waits_for_read = pio_button_s1_in_a_read_cycle & pio_button_s1_begins_xfer;

  //pio_button_s1_in_a_read_cycle assignment, which is an e_assign
  assign pio_button_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_pio_button_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pio_button_s1_in_a_read_cycle;

  //pio_button_s1_waits_for_write in a cycle, which is an e_mux
  assign pio_button_s1_waits_for_write = pio_button_s1_in_a_write_cycle & 0;

  //pio_button_s1_in_a_write_cycle assignment, which is an e_assign
  assign pio_button_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_pio_button_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pio_button_s1_in_a_write_cycle;

  assign wait_for_pio_button_s1_counter = 0;
  //assign pio_button_s1_irq_from_sa = pio_button_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pio_button_s1_irq_from_sa = pio_button_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pio_button/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pio_led_s1_arbitrator (
                               // inputs:
                                clk,
                                clock_crossing_bridge_m1_address_to_slave,
                                clock_crossing_bridge_m1_latency_counter,
                                clock_crossing_bridge_m1_nativeaddress,
                                clock_crossing_bridge_m1_read,
                                clock_crossing_bridge_m1_write,
                                clock_crossing_bridge_m1_writedata,
                                pio_led_s1_readdata,
                                reset_n,

                               // outputs:
                                clock_crossing_bridge_m1_granted_pio_led_s1,
                                clock_crossing_bridge_m1_qualified_request_pio_led_s1,
                                clock_crossing_bridge_m1_read_data_valid_pio_led_s1,
                                clock_crossing_bridge_m1_requests_pio_led_s1,
                                d1_pio_led_s1_end_xfer,
                                pio_led_s1_address,
                                pio_led_s1_chipselect,
                                pio_led_s1_readdata_from_sa,
                                pio_led_s1_reset_n,
                                pio_led_s1_write_n,
                                pio_led_s1_writedata
                             )
;

  output           clock_crossing_bridge_m1_granted_pio_led_s1;
  output           clock_crossing_bridge_m1_qualified_request_pio_led_s1;
  output           clock_crossing_bridge_m1_read_data_valid_pio_led_s1;
  output           clock_crossing_bridge_m1_requests_pio_led_s1;
  output           d1_pio_led_s1_end_xfer;
  output  [  1: 0] pio_led_s1_address;
  output           pio_led_s1_chipselect;
  output  [  3: 0] pio_led_s1_readdata_from_sa;
  output           pio_led_s1_reset_n;
  output           pio_led_s1_write_n;
  output  [  3: 0] pio_led_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input   [  3: 0] pio_led_s1_readdata;
  input            reset_n;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_pio_led_s1;
  wire             clock_crossing_bridge_m1_qualified_request_pio_led_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_pio_led_s1;
  wire             clock_crossing_bridge_m1_requests_pio_led_s1;
  wire             clock_crossing_bridge_m1_saved_grant_pio_led_s1;
  reg              d1_pio_led_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pio_led_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pio_led_s1_address;
  wire             pio_led_s1_allgrants;
  wire             pio_led_s1_allow_new_arb_cycle;
  wire             pio_led_s1_any_bursting_master_saved_grant;
  wire             pio_led_s1_any_continuerequest;
  wire             pio_led_s1_arb_counter_enable;
  reg              pio_led_s1_arb_share_counter;
  wire             pio_led_s1_arb_share_counter_next_value;
  wire             pio_led_s1_arb_share_set_values;
  wire             pio_led_s1_beginbursttransfer_internal;
  wire             pio_led_s1_begins_xfer;
  wire             pio_led_s1_chipselect;
  wire             pio_led_s1_end_xfer;
  wire             pio_led_s1_firsttransfer;
  wire             pio_led_s1_grant_vector;
  wire             pio_led_s1_in_a_read_cycle;
  wire             pio_led_s1_in_a_write_cycle;
  wire             pio_led_s1_master_qreq_vector;
  wire             pio_led_s1_non_bursting_master_requests;
  wire    [  3: 0] pio_led_s1_readdata_from_sa;
  reg              pio_led_s1_reg_firsttransfer;
  wire             pio_led_s1_reset_n;
  reg              pio_led_s1_slavearbiterlockenable;
  wire             pio_led_s1_slavearbiterlockenable2;
  wire             pio_led_s1_unreg_firsttransfer;
  wire             pio_led_s1_waits_for_read;
  wire             pio_led_s1_waits_for_write;
  wire             pio_led_s1_write_n;
  wire    [  3: 0] pio_led_s1_writedata;
  wire             wait_for_pio_led_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pio_led_s1_end_xfer;
    end


  assign pio_led_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_pio_led_s1));
  //assign pio_led_s1_readdata_from_sa = pio_led_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pio_led_s1_readdata_from_sa = pio_led_s1_readdata;

  assign clock_crossing_bridge_m1_requests_pio_led_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 4] , 4'b0} == 9'h90) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //pio_led_s1_arb_share_counter set values, which is an e_mux
  assign pio_led_s1_arb_share_set_values = 1;

  //pio_led_s1_non_bursting_master_requests mux, which is an e_mux
  assign pio_led_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_pio_led_s1;

  //pio_led_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign pio_led_s1_any_bursting_master_saved_grant = 0;

  //pio_led_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign pio_led_s1_arb_share_counter_next_value = pio_led_s1_firsttransfer ? (pio_led_s1_arb_share_set_values - 1) : |pio_led_s1_arb_share_counter ? (pio_led_s1_arb_share_counter - 1) : 0;

  //pio_led_s1_allgrants all slave grants, which is an e_mux
  assign pio_led_s1_allgrants = |pio_led_s1_grant_vector;

  //pio_led_s1_end_xfer assignment, which is an e_assign
  assign pio_led_s1_end_xfer = ~(pio_led_s1_waits_for_read | pio_led_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_pio_led_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pio_led_s1 = pio_led_s1_end_xfer & (~pio_led_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pio_led_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign pio_led_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_pio_led_s1 & pio_led_s1_allgrants) | (end_xfer_arb_share_counter_term_pio_led_s1 & ~pio_led_s1_non_bursting_master_requests);

  //pio_led_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_arb_share_counter <= 0;
      else if (pio_led_s1_arb_counter_enable)
          pio_led_s1_arb_share_counter <= pio_led_s1_arb_share_counter_next_value;
    end


  //pio_led_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_slavearbiterlockenable <= 0;
      else if ((|pio_led_s1_master_qreq_vector & end_xfer_arb_share_counter_term_pio_led_s1) | (end_xfer_arb_share_counter_term_pio_led_s1 & ~pio_led_s1_non_bursting_master_requests))
          pio_led_s1_slavearbiterlockenable <= |pio_led_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 pio_led/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = pio_led_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //pio_led_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pio_led_s1_slavearbiterlockenable2 = |pio_led_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 pio_led/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = pio_led_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //pio_led_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pio_led_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_pio_led_s1 = clock_crossing_bridge_m1_requests_pio_led_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_pio_led_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_pio_led_s1 = clock_crossing_bridge_m1_granted_pio_led_s1 & clock_crossing_bridge_m1_read & ~pio_led_s1_waits_for_read;

  //pio_led_s1_writedata mux, which is an e_mux
  assign pio_led_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_pio_led_s1 = clock_crossing_bridge_m1_qualified_request_pio_led_s1;

  //clock_crossing_bridge/m1 saved-grant pio_led/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_pio_led_s1 = clock_crossing_bridge_m1_requests_pio_led_s1;

  //allow new arb cycle for pio_led/s1, which is an e_assign
  assign pio_led_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pio_led_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pio_led_s1_master_qreq_vector = 1;

  //pio_led_s1_reset_n assignment, which is an e_assign
  assign pio_led_s1_reset_n = reset_n;

  assign pio_led_s1_chipselect = clock_crossing_bridge_m1_granted_pio_led_s1;
  //pio_led_s1_firsttransfer first transaction, which is an e_assign
  assign pio_led_s1_firsttransfer = pio_led_s1_begins_xfer ? pio_led_s1_unreg_firsttransfer : pio_led_s1_reg_firsttransfer;

  //pio_led_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign pio_led_s1_unreg_firsttransfer = ~(pio_led_s1_slavearbiterlockenable & pio_led_s1_any_continuerequest);

  //pio_led_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pio_led_s1_reg_firsttransfer <= 1'b1;
      else if (pio_led_s1_begins_xfer)
          pio_led_s1_reg_firsttransfer <= pio_led_s1_unreg_firsttransfer;
    end


  //pio_led_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pio_led_s1_beginbursttransfer_internal = pio_led_s1_begins_xfer;

  //~pio_led_s1_write_n assignment, which is an e_mux
  assign pio_led_s1_write_n = ~(clock_crossing_bridge_m1_granted_pio_led_s1 & clock_crossing_bridge_m1_write);

  //pio_led_s1_address mux, which is an e_mux
  assign pio_led_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_pio_led_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pio_led_s1_end_xfer <= 1;
      else 
        d1_pio_led_s1_end_xfer <= pio_led_s1_end_xfer;
    end


  //pio_led_s1_waits_for_read in a cycle, which is an e_mux
  assign pio_led_s1_waits_for_read = pio_led_s1_in_a_read_cycle & pio_led_s1_begins_xfer;

  //pio_led_s1_in_a_read_cycle assignment, which is an e_assign
  assign pio_led_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_pio_led_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pio_led_s1_in_a_read_cycle;

  //pio_led_s1_waits_for_write in a cycle, which is an e_mux
  assign pio_led_s1_waits_for_write = pio_led_s1_in_a_write_cycle & 0;

  //pio_led_s1_in_a_write_cycle assignment, which is an e_assign
  assign pio_led_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_pio_led_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pio_led_s1_in_a_write_cycle;

  assign wait_for_pio_led_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pio_led/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module pll_pll_slave_arbitrator (
                                  // inputs:
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_read,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_write,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_writedata,
                                   clk,
                                   pll_pll_slave_readdata,
                                   reset_n,

                                  // outputs:
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave,
                                   DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave,
                                   d1_pll_pll_slave_end_xfer,
                                   pll_pll_slave_address,
                                   pll_pll_slave_read,
                                   pll_pll_slave_readdata_from_sa,
                                   pll_pll_slave_reset,
                                   pll_pll_slave_write,
                                   pll_pll_slave_writedata
                                )
;

  output           DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave;
  output           DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  output           DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  output           DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;
  output           d1_pll_pll_slave_end_xfer;
  output  [  1: 0] pll_pll_slave_address;
  output           pll_pll_slave_read;
  output  [ 31: 0] pll_pll_slave_readdata_from_sa;
  output           pll_pll_slave_reset;
  output           pll_pll_slave_write;
  output  [ 31: 0] pll_pll_slave_writedata;
  input   [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_read;
  input            DE4_230_HDMI_TX_SOPC_clock_0_out_write;
  input   [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_writedata;
  input            clk;
  input   [ 31: 0] pll_pll_slave_readdata;
  input            reset_n;

  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_arbiterlock;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_arbiterlock2;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_continuerequest;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_saved_grant_pll_pll_slave;
  reg              d1_pll_pll_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_pll_pll_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] pll_pll_slave_address;
  wire             pll_pll_slave_allgrants;
  wire             pll_pll_slave_allow_new_arb_cycle;
  wire             pll_pll_slave_any_bursting_master_saved_grant;
  wire             pll_pll_slave_any_continuerequest;
  wire             pll_pll_slave_arb_counter_enable;
  reg              pll_pll_slave_arb_share_counter;
  wire             pll_pll_slave_arb_share_counter_next_value;
  wire             pll_pll_slave_arb_share_set_values;
  wire             pll_pll_slave_beginbursttransfer_internal;
  wire             pll_pll_slave_begins_xfer;
  wire             pll_pll_slave_end_xfer;
  wire             pll_pll_slave_firsttransfer;
  wire             pll_pll_slave_grant_vector;
  wire             pll_pll_slave_in_a_read_cycle;
  wire             pll_pll_slave_in_a_write_cycle;
  wire             pll_pll_slave_master_qreq_vector;
  wire             pll_pll_slave_non_bursting_master_requests;
  wire             pll_pll_slave_read;
  wire    [ 31: 0] pll_pll_slave_readdata_from_sa;
  reg              pll_pll_slave_reg_firsttransfer;
  wire             pll_pll_slave_reset;
  reg              pll_pll_slave_slavearbiterlockenable;
  wire             pll_pll_slave_slavearbiterlockenable2;
  wire             pll_pll_slave_unreg_firsttransfer;
  wire             pll_pll_slave_waits_for_read;
  wire             pll_pll_slave_waits_for_write;
  wire             pll_pll_slave_write;
  wire    [ 31: 0] pll_pll_slave_writedata;
  wire    [  3: 0] shifted_address_to_pll_pll_slave_from_DE4_230_HDMI_TX_SOPC_clock_0_out;
  wire             wait_for_pll_pll_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~pll_pll_slave_end_xfer;
    end


  assign pll_pll_slave_begins_xfer = ~d1_reasons_to_wait & ((DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave));
  //assign pll_pll_slave_readdata_from_sa = pll_pll_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign pll_pll_slave_readdata_from_sa = pll_pll_slave_readdata;

  assign DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave = (1) & (DE4_230_HDMI_TX_SOPC_clock_0_out_read | DE4_230_HDMI_TX_SOPC_clock_0_out_write);
  //pll_pll_slave_arb_share_counter set values, which is an e_mux
  assign pll_pll_slave_arb_share_set_values = 1;

  //pll_pll_slave_non_bursting_master_requests mux, which is an e_mux
  assign pll_pll_slave_non_bursting_master_requests = DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;

  //pll_pll_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign pll_pll_slave_any_bursting_master_saved_grant = 0;

  //pll_pll_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign pll_pll_slave_arb_share_counter_next_value = pll_pll_slave_firsttransfer ? (pll_pll_slave_arb_share_set_values - 1) : |pll_pll_slave_arb_share_counter ? (pll_pll_slave_arb_share_counter - 1) : 0;

  //pll_pll_slave_allgrants all slave grants, which is an e_mux
  assign pll_pll_slave_allgrants = |pll_pll_slave_grant_vector;

  //pll_pll_slave_end_xfer assignment, which is an e_assign
  assign pll_pll_slave_end_xfer = ~(pll_pll_slave_waits_for_read | pll_pll_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_pll_pll_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_pll_pll_slave = pll_pll_slave_end_xfer & (~pll_pll_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //pll_pll_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign pll_pll_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_pll_pll_slave & pll_pll_slave_allgrants) | (end_xfer_arb_share_counter_term_pll_pll_slave & ~pll_pll_slave_non_bursting_master_requests);

  //pll_pll_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_arb_share_counter <= 0;
      else if (pll_pll_slave_arb_counter_enable)
          pll_pll_slave_arb_share_counter <= pll_pll_slave_arb_share_counter_next_value;
    end


  //pll_pll_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_slavearbiterlockenable <= 0;
      else if ((|pll_pll_slave_master_qreq_vector & end_xfer_arb_share_counter_term_pll_pll_slave) | (end_xfer_arb_share_counter_term_pll_pll_slave & ~pll_pll_slave_non_bursting_master_requests))
          pll_pll_slave_slavearbiterlockenable <= |pll_pll_slave_arb_share_counter_next_value;
    end


  //DE4_230_HDMI_TX_SOPC_clock_0/out pll/pll_slave arbiterlock, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_arbiterlock = pll_pll_slave_slavearbiterlockenable & DE4_230_HDMI_TX_SOPC_clock_0_out_continuerequest;

  //pll_pll_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign pll_pll_slave_slavearbiterlockenable2 = |pll_pll_slave_arb_share_counter_next_value;

  //DE4_230_HDMI_TX_SOPC_clock_0/out pll/pll_slave arbiterlock2, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_arbiterlock2 = pll_pll_slave_slavearbiterlockenable2 & DE4_230_HDMI_TX_SOPC_clock_0_out_continuerequest;

  //pll_pll_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign pll_pll_slave_any_continuerequest = 1;

  //DE4_230_HDMI_TX_SOPC_clock_0_out_continuerequest continued request, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_continuerequest = 1;

  assign DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave = DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;
  //pll_pll_slave_writedata mux, which is an e_mux
  assign pll_pll_slave_writedata = DE4_230_HDMI_TX_SOPC_clock_0_out_writedata;

  //master is always granted when requested
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave = DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave;

  //DE4_230_HDMI_TX_SOPC_clock_0/out saved-grant pll/pll_slave, which is an e_assign
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_saved_grant_pll_pll_slave = DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;

  //allow new arb cycle for pll/pll_slave, which is an e_assign
  assign pll_pll_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign pll_pll_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign pll_pll_slave_master_qreq_vector = 1;

  //~pll_pll_slave_reset assignment, which is an e_assign
  assign pll_pll_slave_reset = ~reset_n;

  //pll_pll_slave_firsttransfer first transaction, which is an e_assign
  assign pll_pll_slave_firsttransfer = pll_pll_slave_begins_xfer ? pll_pll_slave_unreg_firsttransfer : pll_pll_slave_reg_firsttransfer;

  //pll_pll_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign pll_pll_slave_unreg_firsttransfer = ~(pll_pll_slave_slavearbiterlockenable & pll_pll_slave_any_continuerequest);

  //pll_pll_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          pll_pll_slave_reg_firsttransfer <= 1'b1;
      else if (pll_pll_slave_begins_xfer)
          pll_pll_slave_reg_firsttransfer <= pll_pll_slave_unreg_firsttransfer;
    end


  //pll_pll_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign pll_pll_slave_beginbursttransfer_internal = pll_pll_slave_begins_xfer;

  //pll_pll_slave_read assignment, which is an e_mux
  assign pll_pll_slave_read = DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave & DE4_230_HDMI_TX_SOPC_clock_0_out_read;

  //pll_pll_slave_write assignment, which is an e_mux
  assign pll_pll_slave_write = DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave & DE4_230_HDMI_TX_SOPC_clock_0_out_write;

  assign shifted_address_to_pll_pll_slave_from_DE4_230_HDMI_TX_SOPC_clock_0_out = DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave;
  //pll_pll_slave_address mux, which is an e_mux
  assign pll_pll_slave_address = shifted_address_to_pll_pll_slave_from_DE4_230_HDMI_TX_SOPC_clock_0_out >> 2;

  //d1_pll_pll_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_pll_pll_slave_end_xfer <= 1;
      else 
        d1_pll_pll_slave_end_xfer <= pll_pll_slave_end_xfer;
    end


  //pll_pll_slave_waits_for_read in a cycle, which is an e_mux
  assign pll_pll_slave_waits_for_read = pll_pll_slave_in_a_read_cycle & 0;

  //pll_pll_slave_in_a_read_cycle assignment, which is an e_assign
  assign pll_pll_slave_in_a_read_cycle = DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave & DE4_230_HDMI_TX_SOPC_clock_0_out_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = pll_pll_slave_in_a_read_cycle;

  //pll_pll_slave_waits_for_write in a cycle, which is an e_mux
  assign pll_pll_slave_waits_for_write = pll_pll_slave_in_a_write_cycle & 0;

  //pll_pll_slave_in_a_write_cycle assignment, which is an e_assign
  assign pll_pll_slave_in_a_write_cycle = DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave & DE4_230_HDMI_TX_SOPC_clock_0_out_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = pll_pll_slave_in_a_write_cycle;

  assign wait_for_pll_pll_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //pll/pll_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         clock_crossing_bridge_m1_address_to_slave,
                                         clock_crossing_bridge_m1_latency_counter,
                                         clock_crossing_bridge_m1_nativeaddress,
                                         clock_crossing_bridge_m1_read,
                                         clock_crossing_bridge_m1_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         clock_crossing_bridge_m1_granted_sysid_control_slave,
                                         clock_crossing_bridge_m1_qualified_request_sysid_control_slave,
                                         clock_crossing_bridge_m1_read_data_valid_sysid_control_slave,
                                         clock_crossing_bridge_m1_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa,
                                         sysid_control_slave_reset_n
                                      )
;

  output           clock_crossing_bridge_m1_granted_sysid_control_slave;
  output           clock_crossing_bridge_m1_qualified_request_sysid_control_slave;
  output           clock_crossing_bridge_m1_read_data_valid_sysid_control_slave;
  output           clock_crossing_bridge_m1_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  output           sysid_control_slave_reset_n;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_sysid_control_slave;
  wire             clock_crossing_bridge_m1_qualified_request_sysid_control_slave;
  wire             clock_crossing_bridge_m1_read_data_valid_sysid_control_slave;
  wire             clock_crossing_bridge_m1_requests_sysid_control_slave;
  wire             clock_crossing_bridge_m1_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg              sysid_control_slave_arb_share_counter;
  wire             sysid_control_slave_arb_share_counter_next_value;
  wire             sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  wire             sysid_control_slave_reset_n;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign clock_crossing_bridge_m1_requests_sysid_control_slave = (({clock_crossing_bridge_m1_address_to_slave[8 : 3] , 3'b0} == 9'h170) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write)) & clock_crossing_bridge_m1_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = clock_crossing_bridge_m1_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 sysid/control_slave arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = sysid_control_slave_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 sysid/control_slave arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_sysid_control_slave = clock_crossing_bridge_m1_requests_sysid_control_slave & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_sysid_control_slave, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_sysid_control_slave = clock_crossing_bridge_m1_granted_sysid_control_slave & clock_crossing_bridge_m1_read & ~sysid_control_slave_waits_for_read;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_sysid_control_slave = clock_crossing_bridge_m1_qualified_request_sysid_control_slave;

  //clock_crossing_bridge/m1 saved-grant sysid/control_slave, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_sysid_control_slave = clock_crossing_bridge_m1_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_reset_n assignment, which is an e_assign
  assign sysid_control_slave_reset_n = reset_n;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else 
        d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = clock_crossing_bridge_m1_granted_sysid_control_slave & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = clock_crossing_bridge_m1_granted_sysid_control_slave & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module timer_s1_arbitrator (
                             // inputs:
                              clk,
                              clock_crossing_bridge_m1_address_to_slave,
                              clock_crossing_bridge_m1_latency_counter,
                              clock_crossing_bridge_m1_nativeaddress,
                              clock_crossing_bridge_m1_read,
                              clock_crossing_bridge_m1_write,
                              clock_crossing_bridge_m1_writedata,
                              reset_n,
                              timer_s1_irq,
                              timer_s1_readdata,

                             // outputs:
                              clock_crossing_bridge_m1_granted_timer_s1,
                              clock_crossing_bridge_m1_qualified_request_timer_s1,
                              clock_crossing_bridge_m1_read_data_valid_timer_s1,
                              clock_crossing_bridge_m1_requests_timer_s1,
                              d1_timer_s1_end_xfer,
                              timer_s1_address,
                              timer_s1_chipselect,
                              timer_s1_irq_from_sa,
                              timer_s1_readdata_from_sa,
                              timer_s1_reset_n,
                              timer_s1_write_n,
                              timer_s1_writedata
                           )
;

  output           clock_crossing_bridge_m1_granted_timer_s1;
  output           clock_crossing_bridge_m1_qualified_request_timer_s1;
  output           clock_crossing_bridge_m1_read_data_valid_timer_s1;
  output           clock_crossing_bridge_m1_requests_timer_s1;
  output           d1_timer_s1_end_xfer;
  output  [  2: 0] timer_s1_address;
  output           timer_s1_chipselect;
  output           timer_s1_irq_from_sa;
  output  [ 15: 0] timer_s1_readdata_from_sa;
  output           timer_s1_reset_n;
  output           timer_s1_write_n;
  output  [ 15: 0] timer_s1_writedata;
  input            clk;
  input   [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  input            clock_crossing_bridge_m1_latency_counter;
  input   [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  input            clock_crossing_bridge_m1_read;
  input            clock_crossing_bridge_m1_write;
  input   [ 31: 0] clock_crossing_bridge_m1_writedata;
  input            reset_n;
  input            timer_s1_irq;
  input   [ 15: 0] timer_s1_readdata;

  wire             clock_crossing_bridge_m1_arbiterlock;
  wire             clock_crossing_bridge_m1_arbiterlock2;
  wire             clock_crossing_bridge_m1_continuerequest;
  wire             clock_crossing_bridge_m1_granted_timer_s1;
  wire             clock_crossing_bridge_m1_qualified_request_timer_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_timer_s1;
  wire             clock_crossing_bridge_m1_requests_timer_s1;
  wire             clock_crossing_bridge_m1_saved_grant_timer_s1;
  reg              d1_reasons_to_wait;
  reg              d1_timer_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_timer_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_allgrants;
  wire             timer_s1_allow_new_arb_cycle;
  wire             timer_s1_any_bursting_master_saved_grant;
  wire             timer_s1_any_continuerequest;
  wire             timer_s1_arb_counter_enable;
  reg              timer_s1_arb_share_counter;
  wire             timer_s1_arb_share_counter_next_value;
  wire             timer_s1_arb_share_set_values;
  wire             timer_s1_beginbursttransfer_internal;
  wire             timer_s1_begins_xfer;
  wire             timer_s1_chipselect;
  wire             timer_s1_end_xfer;
  wire             timer_s1_firsttransfer;
  wire             timer_s1_grant_vector;
  wire             timer_s1_in_a_read_cycle;
  wire             timer_s1_in_a_write_cycle;
  wire             timer_s1_irq_from_sa;
  wire             timer_s1_master_qreq_vector;
  wire             timer_s1_non_bursting_master_requests;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  reg              timer_s1_reg_firsttransfer;
  wire             timer_s1_reset_n;
  reg              timer_s1_slavearbiterlockenable;
  wire             timer_s1_slavearbiterlockenable2;
  wire             timer_s1_unreg_firsttransfer;
  wire             timer_s1_waits_for_read;
  wire             timer_s1_waits_for_write;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  wire             wait_for_timer_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~timer_s1_end_xfer;
    end


  assign timer_s1_begins_xfer = ~d1_reasons_to_wait & ((clock_crossing_bridge_m1_qualified_request_timer_s1));
  //assign timer_s1_readdata_from_sa = timer_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_readdata_from_sa = timer_s1_readdata;

  assign clock_crossing_bridge_m1_requests_timer_s1 = ({clock_crossing_bridge_m1_address_to_slave[8 : 5] , 5'b0} == 9'h0) & (clock_crossing_bridge_m1_read | clock_crossing_bridge_m1_write);
  //timer_s1_arb_share_counter set values, which is an e_mux
  assign timer_s1_arb_share_set_values = 1;

  //timer_s1_non_bursting_master_requests mux, which is an e_mux
  assign timer_s1_non_bursting_master_requests = clock_crossing_bridge_m1_requests_timer_s1;

  //timer_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign timer_s1_any_bursting_master_saved_grant = 0;

  //timer_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign timer_s1_arb_share_counter_next_value = timer_s1_firsttransfer ? (timer_s1_arb_share_set_values - 1) : |timer_s1_arb_share_counter ? (timer_s1_arb_share_counter - 1) : 0;

  //timer_s1_allgrants all slave grants, which is an e_mux
  assign timer_s1_allgrants = |timer_s1_grant_vector;

  //timer_s1_end_xfer assignment, which is an e_assign
  assign timer_s1_end_xfer = ~(timer_s1_waits_for_read | timer_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_timer_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_timer_s1 = timer_s1_end_xfer & (~timer_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //timer_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign timer_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_timer_s1 & timer_s1_allgrants) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests);

  //timer_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_arb_share_counter <= 0;
      else if (timer_s1_arb_counter_enable)
          timer_s1_arb_share_counter <= timer_s1_arb_share_counter_next_value;
    end


  //timer_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_slavearbiterlockenable <= 0;
      else if ((|timer_s1_master_qreq_vector & end_xfer_arb_share_counter_term_timer_s1) | (end_xfer_arb_share_counter_term_timer_s1 & ~timer_s1_non_bursting_master_requests))
          timer_s1_slavearbiterlockenable <= |timer_s1_arb_share_counter_next_value;
    end


  //clock_crossing_bridge/m1 timer/s1 arbiterlock, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock = timer_s1_slavearbiterlockenable & clock_crossing_bridge_m1_continuerequest;

  //timer_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign timer_s1_slavearbiterlockenable2 = |timer_s1_arb_share_counter_next_value;

  //clock_crossing_bridge/m1 timer/s1 arbiterlock2, which is an e_assign
  assign clock_crossing_bridge_m1_arbiterlock2 = timer_s1_slavearbiterlockenable2 & clock_crossing_bridge_m1_continuerequest;

  //timer_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign timer_s1_any_continuerequest = 1;

  //clock_crossing_bridge_m1_continuerequest continued request, which is an e_assign
  assign clock_crossing_bridge_m1_continuerequest = 1;

  assign clock_crossing_bridge_m1_qualified_request_timer_s1 = clock_crossing_bridge_m1_requests_timer_s1 & ~((clock_crossing_bridge_m1_read & ((clock_crossing_bridge_m1_latency_counter != 0))));
  //local readdatavalid clock_crossing_bridge_m1_read_data_valid_timer_s1, which is an e_mux
  assign clock_crossing_bridge_m1_read_data_valid_timer_s1 = clock_crossing_bridge_m1_granted_timer_s1 & clock_crossing_bridge_m1_read & ~timer_s1_waits_for_read;

  //timer_s1_writedata mux, which is an e_mux
  assign timer_s1_writedata = clock_crossing_bridge_m1_writedata;

  //master is always granted when requested
  assign clock_crossing_bridge_m1_granted_timer_s1 = clock_crossing_bridge_m1_qualified_request_timer_s1;

  //clock_crossing_bridge/m1 saved-grant timer/s1, which is an e_assign
  assign clock_crossing_bridge_m1_saved_grant_timer_s1 = clock_crossing_bridge_m1_requests_timer_s1;

  //allow new arb cycle for timer/s1, which is an e_assign
  assign timer_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign timer_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign timer_s1_master_qreq_vector = 1;

  //timer_s1_reset_n assignment, which is an e_assign
  assign timer_s1_reset_n = reset_n;

  assign timer_s1_chipselect = clock_crossing_bridge_m1_granted_timer_s1;
  //timer_s1_firsttransfer first transaction, which is an e_assign
  assign timer_s1_firsttransfer = timer_s1_begins_xfer ? timer_s1_unreg_firsttransfer : timer_s1_reg_firsttransfer;

  //timer_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign timer_s1_unreg_firsttransfer = ~(timer_s1_slavearbiterlockenable & timer_s1_any_continuerequest);

  //timer_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          timer_s1_reg_firsttransfer <= 1'b1;
      else if (timer_s1_begins_xfer)
          timer_s1_reg_firsttransfer <= timer_s1_unreg_firsttransfer;
    end


  //timer_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign timer_s1_beginbursttransfer_internal = timer_s1_begins_xfer;

  //~timer_s1_write_n assignment, which is an e_mux
  assign timer_s1_write_n = ~(clock_crossing_bridge_m1_granted_timer_s1 & clock_crossing_bridge_m1_write);

  //timer_s1_address mux, which is an e_mux
  assign timer_s1_address = clock_crossing_bridge_m1_nativeaddress;

  //d1_timer_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_timer_s1_end_xfer <= 1;
      else 
        d1_timer_s1_end_xfer <= timer_s1_end_xfer;
    end


  //timer_s1_waits_for_read in a cycle, which is an e_mux
  assign timer_s1_waits_for_read = timer_s1_in_a_read_cycle & timer_s1_begins_xfer;

  //timer_s1_in_a_read_cycle assignment, which is an e_assign
  assign timer_s1_in_a_read_cycle = clock_crossing_bridge_m1_granted_timer_s1 & clock_crossing_bridge_m1_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = timer_s1_in_a_read_cycle;

  //timer_s1_waits_for_write in a cycle, which is an e_mux
  assign timer_s1_waits_for_write = timer_s1_in_a_write_cycle & 0;

  //timer_s1_in_a_write_cycle assignment, which is an e_assign
  assign timer_s1_in_a_write_cycle = clock_crossing_bridge_m1_granted_timer_s1 & clock_crossing_bridge_m1_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = timer_s1_in_a_write_cycle;

  assign wait_for_timer_s1_counter = 0;
  //assign timer_s1_irq_from_sa = timer_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign timer_s1_irq_from_sa = timer_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //timer/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC_reset_pll_cpu_domain_synch_module (
                                                                // inputs:
                                                                 clk,
                                                                 data_in,
                                                                 reset_n,

                                                                // outputs:
                                                                 data_out
                                                              )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC_reset_pll_io_domain_synch_module (
                                                               // inputs:
                                                                clk,
                                                                data_in,
                                                                reset_n,

                                                               // outputs:
                                                                data_out
                                                             )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC_reset_clk_domain_synch_module (
                                                            // inputs:
                                                             clk,
                                                             data_in,
                                                             reset_n,

                                                            // outputs:
                                                             data_out
                                                          )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module DE4_230_HDMI_TX_SOPC (
                              // 1) global signals:
                               clk,
                               pll_cpu,
                               pll_io,
                               reset_n,

                              // the_hdmi_rx0_ep_scl
                               bidir_port_to_and_from_the_hdmi_rx0_ep_scl,

                              // the_hdmi_rx0_ep_sda
                               bidir_port_to_and_from_the_hdmi_rx0_ep_sda,

                              // the_hdmi_rx1_ep_scl
                               bidir_port_to_and_from_the_hdmi_rx1_ep_scl,

                              // the_hdmi_rx1_ep_sda
                               bidir_port_to_and_from_the_hdmi_rx1_ep_sda,

                              // the_hdmi_rx_cec
                               bidir_port_to_and_from_the_hdmi_rx_cec,

                              // the_hdmi_rx_edid_wp
                               out_port_from_the_hdmi_rx_edid_wp,

                              // the_hdmi_rx_hpd_n
                               out_port_from_the_hdmi_rx_hpd_n,

                              // the_hdmi_rx_i2c_scl
                               out_port_from_the_hdmi_rx_i2c_scl,

                              // the_hdmi_rx_i2c_sda
                               bidir_port_to_and_from_the_hdmi_rx_i2c_sda,

                              // the_hdmi_rx_irq_n
                               in_port_to_the_hdmi_rx_irq_n,

                              // the_hdmi_rx_reset_n
                               out_port_from_the_hdmi_rx_reset_n,

                              // the_hdmi_rx_sync
                               out_port_from_the_hdmi_rx_sync,

                              // the_hdmi_tx_disp_mode
                               out_port_from_the_hdmi_tx_disp_mode,

                              // the_hdmi_tx_i2c_scl
                               out_port_from_the_hdmi_tx_i2c_scl,

                              // the_hdmi_tx_i2c_sda
                               bidir_port_to_and_from_the_hdmi_tx_i2c_sda,

                              // the_hdmi_tx_irq_n
                               in_port_to_the_hdmi_tx_irq_n,

                              // the_hdmi_tx_mode_change
                               out_port_from_the_hdmi_tx_mode_change,

                              // the_hdmi_tx_reset_n
                               out_port_from_the_hdmi_tx_reset_n,

                              // the_hdmi_tx_vpg_color
                               out_port_from_the_hdmi_tx_vpg_color,

                              // the_i2s_tx
                               i2s_sck_to_the_i2s_tx,
                               i2s_sd_from_the_i2s_tx,
                               i2s_ws_from_the_i2s_tx,

                              // the_pio_button
                               in_port_to_the_pio_button,

                              // the_pio_led
                               out_port_from_the_pio_led,

                              // the_pll
                               locked_from_the_pll,
                               phasedone_from_the_pll
                            )
;

  inout            bidir_port_to_and_from_the_hdmi_rx0_ep_scl;
  inout            bidir_port_to_and_from_the_hdmi_rx0_ep_sda;
  inout            bidir_port_to_and_from_the_hdmi_rx1_ep_scl;
  inout            bidir_port_to_and_from_the_hdmi_rx1_ep_sda;
  inout   [  1: 0] bidir_port_to_and_from_the_hdmi_rx_cec;
  inout            bidir_port_to_and_from_the_hdmi_rx_i2c_sda;
  inout            bidir_port_to_and_from_the_hdmi_tx_i2c_sda;
  output           i2s_sd_from_the_i2s_tx;
  output           i2s_ws_from_the_i2s_tx;
  output           locked_from_the_pll;
  output           out_port_from_the_hdmi_rx_edid_wp;
  output  [  1: 0] out_port_from_the_hdmi_rx_hpd_n;
  output           out_port_from_the_hdmi_rx_i2c_scl;
  output           out_port_from_the_hdmi_rx_reset_n;
  output           out_port_from_the_hdmi_rx_sync;
  output  [  3: 0] out_port_from_the_hdmi_tx_disp_mode;
  output           out_port_from_the_hdmi_tx_i2c_scl;
  output           out_port_from_the_hdmi_tx_mode_change;
  output           out_port_from_the_hdmi_tx_reset_n;
  output  [  1: 0] out_port_from_the_hdmi_tx_vpg_color;
  output  [  3: 0] out_port_from_the_pio_led;
  output           phasedone_from_the_pll;
  output           pll_cpu;
  output           pll_io;
  input            clk;
  input            i2s_sck_to_the_i2s_tx;
  input            in_port_to_the_hdmi_rx_irq_n;
  input            in_port_to_the_hdmi_tx_irq_n;
  input   [  1: 0] in_port_to_the_pio_button;
  input            reset_n;

  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_address;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa;
  wire    [  1: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_read;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_write;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_in_writedata;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave;
  wire    [  3: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_endofpacket;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave;
  wire    [  1: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_nativeaddress;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_read;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_readdata;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_write;
  wire    [ 31: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_writedata;
  wire             bidir_port_to_and_from_the_hdmi_rx0_ep_scl;
  wire             bidir_port_to_and_from_the_hdmi_rx0_ep_sda;
  wire             bidir_port_to_and_from_the_hdmi_rx1_ep_scl;
  wire             bidir_port_to_and_from_the_hdmi_rx1_ep_sda;
  wire    [  1: 0] bidir_port_to_and_from_the_hdmi_rx_cec;
  wire             bidir_port_to_and_from_the_hdmi_rx_i2c_sda;
  wire             bidir_port_to_and_from_the_hdmi_tx_i2c_sda;
  wire             clk_reset_n;
  wire    [  8: 0] clock_crossing_bridge_m1_address;
  wire    [  8: 0] clock_crossing_bridge_m1_address_to_slave;
  wire    [  3: 0] clock_crossing_bridge_m1_byteenable;
  wire             clock_crossing_bridge_m1_endofpacket;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_granted_pio_button_s1;
  wire             clock_crossing_bridge_m1_granted_pio_led_s1;
  wire             clock_crossing_bridge_m1_granted_sysid_control_slave;
  wire             clock_crossing_bridge_m1_granted_timer_s1;
  wire             clock_crossing_bridge_m1_latency_counter;
  wire    [  6: 0] clock_crossing_bridge_m1_nativeaddress;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_qualified_request_pio_button_s1;
  wire             clock_crossing_bridge_m1_qualified_request_pio_led_s1;
  wire             clock_crossing_bridge_m1_qualified_request_sysid_control_slave;
  wire             clock_crossing_bridge_m1_qualified_request_timer_s1;
  wire             clock_crossing_bridge_m1_read;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_pio_button_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_pio_led_s1;
  wire             clock_crossing_bridge_m1_read_data_valid_sysid_control_slave;
  wire             clock_crossing_bridge_m1_read_data_valid_timer_s1;
  wire    [ 31: 0] clock_crossing_bridge_m1_readdata;
  wire             clock_crossing_bridge_m1_readdatavalid;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1;
  wire             clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1;
  wire             clock_crossing_bridge_m1_requests_pio_button_s1;
  wire             clock_crossing_bridge_m1_requests_pio_led_s1;
  wire             clock_crossing_bridge_m1_requests_sysid_control_slave;
  wire             clock_crossing_bridge_m1_requests_timer_s1;
  wire             clock_crossing_bridge_m1_reset_n;
  wire             clock_crossing_bridge_m1_waitrequest;
  wire             clock_crossing_bridge_m1_write;
  wire    [ 31: 0] clock_crossing_bridge_m1_writedata;
  wire    [  6: 0] clock_crossing_bridge_s1_address;
  wire    [  3: 0] clock_crossing_bridge_s1_byteenable;
  wire             clock_crossing_bridge_s1_endofpacket;
  wire             clock_crossing_bridge_s1_endofpacket_from_sa;
  wire    [  6: 0] clock_crossing_bridge_s1_nativeaddress;
  wire             clock_crossing_bridge_s1_read;
  wire    [ 31: 0] clock_crossing_bridge_s1_readdata;
  wire    [ 31: 0] clock_crossing_bridge_s1_readdata_from_sa;
  wire             clock_crossing_bridge_s1_readdatavalid;
  wire             clock_crossing_bridge_s1_reset_n;
  wire             clock_crossing_bridge_s1_waitrequest;
  wire             clock_crossing_bridge_s1_waitrequest_from_sa;
  wire             clock_crossing_bridge_s1_write;
  wire    [ 31: 0] clock_crossing_bridge_s1_writedata;
  wire    [ 24: 0] cpu_data_master_address;
  wire    [ 24: 0] cpu_data_master_address_to_slave;
  wire    [  3: 0] cpu_data_master_byteenable;
  wire             cpu_data_master_debugaccess;
  wire             cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_granted_clock_crossing_bridge_s1;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_granted_i2s_tx_slave;
  wire             cpu_data_master_granted_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_granted_onchip_memory2_s1;
  wire    [ 31: 0] cpu_data_master_irq;
  wire             cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_qualified_request_clock_crossing_bridge_s1;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_i2s_tx_slave;
  wire             cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_onchip_memory2_s1;
  wire             cpu_data_master_read;
  wire             cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_read_data_valid_clock_crossing_bridge_s1;
  wire             cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_i2s_tx_slave;
  wire             cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_onchip_memory2_s1;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in;
  wire             cpu_data_master_requests_clock_crossing_bridge_s1;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_i2s_tx_slave;
  wire             cpu_data_master_requests_jtag_uart_avalon_jtag_slave;
  wire             cpu_data_master_requests_onchip_memory2_s1;
  wire             cpu_data_master_waitrequest;
  wire             cpu_data_master_write;
  wire    [ 31: 0] cpu_data_master_writedata;
  wire    [ 24: 0] cpu_instruction_master_address;
  wire    [ 24: 0] cpu_instruction_master_address_to_slave;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_granted_onchip_memory2_s1;
  wire             cpu_instruction_master_latency_counter;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_onchip_memory2_s1;
  wire             cpu_instruction_master_read;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_onchip_memory2_s1;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_onchip_memory2_s1;
  wire             cpu_instruction_master_waitrequest;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire             cpu_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  wire             d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer;
  wire             d1_clock_crossing_bridge_s1_end_xfer;
  wire             d1_cpu_jtag_debug_module_end_xfer;
  wire             d1_hdmi_rx0_ep_scl_s1_end_xfer;
  wire             d1_hdmi_rx0_ep_sda_s1_end_xfer;
  wire             d1_hdmi_rx1_ep_scl_s1_end_xfer;
  wire             d1_hdmi_rx1_ep_sda_s1_end_xfer;
  wire             d1_hdmi_rx_cec_s1_end_xfer;
  wire             d1_hdmi_rx_edid_wp_s1_end_xfer;
  wire             d1_hdmi_rx_hpd_n_s1_end_xfer;
  wire             d1_hdmi_rx_i2c_scl_s1_end_xfer;
  wire             d1_hdmi_rx_i2c_sda_s1_end_xfer;
  wire             d1_hdmi_rx_irq_n_s1_end_xfer;
  wire             d1_hdmi_rx_reset_n_s1_end_xfer;
  wire             d1_hdmi_rx_sync_s1_end_xfer;
  wire             d1_hdmi_tx_disp_mode_s1_end_xfer;
  wire             d1_hdmi_tx_i2c_scl_s1_end_xfer;
  wire             d1_hdmi_tx_i2c_sda_s1_end_xfer;
  wire             d1_hdmi_tx_irq_n_s1_end_xfer;
  wire             d1_hdmi_tx_mode_change_s1_end_xfer;
  wire             d1_hdmi_tx_reset_n_s1_end_xfer;
  wire             d1_hdmi_tx_vpg_color_s1_end_xfer;
  wire             d1_i2s_tx_slave_end_xfer;
  wire             d1_jtag_uart_avalon_jtag_slave_end_xfer;
  wire             d1_onchip_memory2_s1_end_xfer;
  wire             d1_pio_button_s1_end_xfer;
  wire             d1_pio_led_s1_end_xfer;
  wire             d1_pll_pll_slave_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire             d1_timer_s1_end_xfer;
  wire    [  1: 0] hdmi_rx0_ep_scl_s1_address;
  wire             hdmi_rx0_ep_scl_s1_chipselect;
  wire             hdmi_rx0_ep_scl_s1_readdata;
  wire             hdmi_rx0_ep_scl_s1_readdata_from_sa;
  wire             hdmi_rx0_ep_scl_s1_reset_n;
  wire             hdmi_rx0_ep_scl_s1_write_n;
  wire             hdmi_rx0_ep_scl_s1_writedata;
  wire    [  1: 0] hdmi_rx0_ep_sda_s1_address;
  wire             hdmi_rx0_ep_sda_s1_chipselect;
  wire             hdmi_rx0_ep_sda_s1_readdata;
  wire             hdmi_rx0_ep_sda_s1_readdata_from_sa;
  wire             hdmi_rx0_ep_sda_s1_reset_n;
  wire             hdmi_rx0_ep_sda_s1_write_n;
  wire             hdmi_rx0_ep_sda_s1_writedata;
  wire    [  1: 0] hdmi_rx1_ep_scl_s1_address;
  wire             hdmi_rx1_ep_scl_s1_chipselect;
  wire             hdmi_rx1_ep_scl_s1_readdata;
  wire             hdmi_rx1_ep_scl_s1_readdata_from_sa;
  wire             hdmi_rx1_ep_scl_s1_reset_n;
  wire             hdmi_rx1_ep_scl_s1_write_n;
  wire             hdmi_rx1_ep_scl_s1_writedata;
  wire    [  1: 0] hdmi_rx1_ep_sda_s1_address;
  wire             hdmi_rx1_ep_sda_s1_chipselect;
  wire             hdmi_rx1_ep_sda_s1_readdata;
  wire             hdmi_rx1_ep_sda_s1_readdata_from_sa;
  wire             hdmi_rx1_ep_sda_s1_reset_n;
  wire             hdmi_rx1_ep_sda_s1_write_n;
  wire             hdmi_rx1_ep_sda_s1_writedata;
  wire    [  1: 0] hdmi_rx_cec_s1_address;
  wire             hdmi_rx_cec_s1_chipselect;
  wire    [  1: 0] hdmi_rx_cec_s1_readdata;
  wire    [  1: 0] hdmi_rx_cec_s1_readdata_from_sa;
  wire             hdmi_rx_cec_s1_reset_n;
  wire             hdmi_rx_cec_s1_write_n;
  wire    [  1: 0] hdmi_rx_cec_s1_writedata;
  wire    [  1: 0] hdmi_rx_edid_wp_s1_address;
  wire             hdmi_rx_edid_wp_s1_chipselect;
  wire             hdmi_rx_edid_wp_s1_readdata;
  wire             hdmi_rx_edid_wp_s1_readdata_from_sa;
  wire             hdmi_rx_edid_wp_s1_reset_n;
  wire             hdmi_rx_edid_wp_s1_write_n;
  wire             hdmi_rx_edid_wp_s1_writedata;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_address;
  wire             hdmi_rx_hpd_n_s1_chipselect;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_readdata;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_readdata_from_sa;
  wire             hdmi_rx_hpd_n_s1_reset_n;
  wire             hdmi_rx_hpd_n_s1_write_n;
  wire    [  1: 0] hdmi_rx_hpd_n_s1_writedata;
  wire    [  1: 0] hdmi_rx_i2c_scl_s1_address;
  wire             hdmi_rx_i2c_scl_s1_chipselect;
  wire             hdmi_rx_i2c_scl_s1_readdata;
  wire             hdmi_rx_i2c_scl_s1_readdata_from_sa;
  wire             hdmi_rx_i2c_scl_s1_reset_n;
  wire             hdmi_rx_i2c_scl_s1_write_n;
  wire             hdmi_rx_i2c_scl_s1_writedata;
  wire    [  1: 0] hdmi_rx_i2c_sda_s1_address;
  wire             hdmi_rx_i2c_sda_s1_chipselect;
  wire             hdmi_rx_i2c_sda_s1_readdata;
  wire             hdmi_rx_i2c_sda_s1_readdata_from_sa;
  wire             hdmi_rx_i2c_sda_s1_reset_n;
  wire             hdmi_rx_i2c_sda_s1_write_n;
  wire             hdmi_rx_i2c_sda_s1_writedata;
  wire    [  1: 0] hdmi_rx_irq_n_s1_address;
  wire             hdmi_rx_irq_n_s1_readdata;
  wire             hdmi_rx_irq_n_s1_readdata_from_sa;
  wire             hdmi_rx_irq_n_s1_reset_n;
  wire    [  1: 0] hdmi_rx_reset_n_s1_address;
  wire             hdmi_rx_reset_n_s1_chipselect;
  wire             hdmi_rx_reset_n_s1_readdata;
  wire             hdmi_rx_reset_n_s1_readdata_from_sa;
  wire             hdmi_rx_reset_n_s1_reset_n;
  wire             hdmi_rx_reset_n_s1_write_n;
  wire             hdmi_rx_reset_n_s1_writedata;
  wire    [  1: 0] hdmi_rx_sync_s1_address;
  wire             hdmi_rx_sync_s1_chipselect;
  wire             hdmi_rx_sync_s1_readdata;
  wire             hdmi_rx_sync_s1_readdata_from_sa;
  wire             hdmi_rx_sync_s1_reset_n;
  wire             hdmi_rx_sync_s1_write_n;
  wire             hdmi_rx_sync_s1_writedata;
  wire    [  1: 0] hdmi_tx_disp_mode_s1_address;
  wire             hdmi_tx_disp_mode_s1_chipselect;
  wire    [  3: 0] hdmi_tx_disp_mode_s1_readdata;
  wire    [  3: 0] hdmi_tx_disp_mode_s1_readdata_from_sa;
  wire             hdmi_tx_disp_mode_s1_reset_n;
  wire             hdmi_tx_disp_mode_s1_write_n;
  wire    [  3: 0] hdmi_tx_disp_mode_s1_writedata;
  wire    [  1: 0] hdmi_tx_i2c_scl_s1_address;
  wire             hdmi_tx_i2c_scl_s1_chipselect;
  wire             hdmi_tx_i2c_scl_s1_readdata;
  wire             hdmi_tx_i2c_scl_s1_readdata_from_sa;
  wire             hdmi_tx_i2c_scl_s1_reset_n;
  wire             hdmi_tx_i2c_scl_s1_write_n;
  wire             hdmi_tx_i2c_scl_s1_writedata;
  wire    [  1: 0] hdmi_tx_i2c_sda_s1_address;
  wire             hdmi_tx_i2c_sda_s1_chipselect;
  wire             hdmi_tx_i2c_sda_s1_readdata;
  wire             hdmi_tx_i2c_sda_s1_readdata_from_sa;
  wire             hdmi_tx_i2c_sda_s1_reset_n;
  wire             hdmi_tx_i2c_sda_s1_write_n;
  wire             hdmi_tx_i2c_sda_s1_writedata;
  wire    [  1: 0] hdmi_tx_irq_n_s1_address;
  wire             hdmi_tx_irq_n_s1_chipselect;
  wire             hdmi_tx_irq_n_s1_irq;
  wire             hdmi_tx_irq_n_s1_irq_from_sa;
  wire             hdmi_tx_irq_n_s1_readdata;
  wire             hdmi_tx_irq_n_s1_readdata_from_sa;
  wire             hdmi_tx_irq_n_s1_reset_n;
  wire             hdmi_tx_irq_n_s1_write_n;
  wire             hdmi_tx_irq_n_s1_writedata;
  wire    [  1: 0] hdmi_tx_mode_change_s1_address;
  wire             hdmi_tx_mode_change_s1_chipselect;
  wire             hdmi_tx_mode_change_s1_readdata;
  wire             hdmi_tx_mode_change_s1_readdata_from_sa;
  wire             hdmi_tx_mode_change_s1_reset_n;
  wire             hdmi_tx_mode_change_s1_write_n;
  wire             hdmi_tx_mode_change_s1_writedata;
  wire    [  1: 0] hdmi_tx_reset_n_s1_address;
  wire             hdmi_tx_reset_n_s1_chipselect;
  wire             hdmi_tx_reset_n_s1_readdata;
  wire             hdmi_tx_reset_n_s1_readdata_from_sa;
  wire             hdmi_tx_reset_n_s1_reset_n;
  wire             hdmi_tx_reset_n_s1_write_n;
  wire             hdmi_tx_reset_n_s1_writedata;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_address;
  wire             hdmi_tx_vpg_color_s1_chipselect;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_readdata;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_readdata_from_sa;
  wire             hdmi_tx_vpg_color_s1_reset_n;
  wire             hdmi_tx_vpg_color_s1_write_n;
  wire    [  1: 0] hdmi_tx_vpg_color_s1_writedata;
  wire             i2s_sd_from_the_i2s_tx;
  wire    [  1: 0] i2s_tx_slave_address;
  wire             i2s_tx_slave_chipselect;
  wire             i2s_tx_slave_irq;
  wire             i2s_tx_slave_irq_from_sa;
  wire             i2s_tx_slave_read;
  wire    [ 31: 0] i2s_tx_slave_readdata;
  wire    [ 31: 0] i2s_tx_slave_readdata_from_sa;
  wire             i2s_tx_slave_reset;
  wire             i2s_tx_slave_write;
  wire    [ 31: 0] i2s_tx_slave_writedata;
  wire             i2s_ws_from_the_i2s_tx;
  wire             jtag_uart_avalon_jtag_slave_address;
  wire             jtag_uart_avalon_jtag_slave_chipselect;
  wire             jtag_uart_avalon_jtag_slave_dataavailable;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_irq;
  wire             jtag_uart_avalon_jtag_slave_irq_from_sa;
  wire             jtag_uart_avalon_jtag_slave_read_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_readdata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             jtag_uart_avalon_jtag_slave_reset_n;
  wire             jtag_uart_avalon_jtag_slave_waitrequest;
  wire             jtag_uart_avalon_jtag_slave_waitrequest_from_sa;
  wire             jtag_uart_avalon_jtag_slave_write_n;
  wire    [ 31: 0] jtag_uart_avalon_jtag_slave_writedata;
  wire             locked_from_the_pll;
  wire    [ 14: 0] onchip_memory2_s1_address;
  wire    [  3: 0] onchip_memory2_s1_byteenable;
  wire             onchip_memory2_s1_chipselect;
  wire             onchip_memory2_s1_clken;
  wire    [ 31: 0] onchip_memory2_s1_readdata;
  wire    [ 31: 0] onchip_memory2_s1_readdata_from_sa;
  wire             onchip_memory2_s1_write;
  wire    [ 31: 0] onchip_memory2_s1_writedata;
  wire             out_clk_pll_c0;
  wire             out_clk_pll_c1;
  wire             out_port_from_the_hdmi_rx_edid_wp;
  wire    [  1: 0] out_port_from_the_hdmi_rx_hpd_n;
  wire             out_port_from_the_hdmi_rx_i2c_scl;
  wire             out_port_from_the_hdmi_rx_reset_n;
  wire             out_port_from_the_hdmi_rx_sync;
  wire    [  3: 0] out_port_from_the_hdmi_tx_disp_mode;
  wire             out_port_from_the_hdmi_tx_i2c_scl;
  wire             out_port_from_the_hdmi_tx_mode_change;
  wire             out_port_from_the_hdmi_tx_reset_n;
  wire    [  1: 0] out_port_from_the_hdmi_tx_vpg_color;
  wire    [  3: 0] out_port_from_the_pio_led;
  wire             phasedone_from_the_pll;
  wire    [  1: 0] pio_button_s1_address;
  wire             pio_button_s1_chipselect;
  wire             pio_button_s1_irq;
  wire             pio_button_s1_irq_from_sa;
  wire    [  1: 0] pio_button_s1_readdata;
  wire    [  1: 0] pio_button_s1_readdata_from_sa;
  wire             pio_button_s1_reset_n;
  wire             pio_button_s1_write_n;
  wire    [  1: 0] pio_button_s1_writedata;
  wire    [  1: 0] pio_led_s1_address;
  wire             pio_led_s1_chipselect;
  wire    [  3: 0] pio_led_s1_readdata;
  wire    [  3: 0] pio_led_s1_readdata_from_sa;
  wire             pio_led_s1_reset_n;
  wire             pio_led_s1_write_n;
  wire    [  3: 0] pio_led_s1_writedata;
  wire             pll_cpu;
  wire             pll_cpu_reset_n;
  wire             pll_io;
  wire             pll_io_reset_n;
  wire    [  1: 0] pll_pll_slave_address;
  wire             pll_pll_slave_read;
  wire    [ 31: 0] pll_pll_slave_readdata;
  wire    [ 31: 0] pll_pll_slave_readdata_from_sa;
  wire             pll_pll_slave_reset;
  wire             pll_pll_slave_write;
  wire    [ 31: 0] pll_pll_slave_writedata;
  wire             registered_cpu_data_master_read_data_valid_onchip_memory2_s1;
  wire             reset_n_sources;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_clock;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  wire             sysid_control_slave_reset_n;
  wire    [  2: 0] timer_s1_address;
  wire             timer_s1_chipselect;
  wire             timer_s1_irq;
  wire             timer_s1_irq_from_sa;
  wire    [ 15: 0] timer_s1_readdata;
  wire    [ 15: 0] timer_s1_readdata_from_sa;
  wire             timer_s1_reset_n;
  wire             timer_s1_write_n;
  wire    [ 15: 0] timer_s1_writedata;
  DE4_230_HDMI_TX_SOPC_clock_0_in_arbitrator the_DE4_230_HDMI_TX_SOPC_clock_0_in
    (
      .DE4_230_HDMI_TX_SOPC_clock_0_in_address                           (DE4_230_HDMI_TX_SOPC_clock_0_in_address),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable                        (DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket                       (DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa               (DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress                     (DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_read                              (DE4_230_HDMI_TX_SOPC_clock_0_in_read),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_readdata                          (DE4_230_HDMI_TX_SOPC_clock_0_in_readdata),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa                  (DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n                           (DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest                       (DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa               (DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_write                             (DE4_230_HDMI_TX_SOPC_clock_0_in_write),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_writedata                         (DE4_230_HDMI_TX_SOPC_clock_0_in_writedata),
      .clk                                                               (pll_cpu),
      .cpu_data_master_address_to_slave                                  (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                        (cpu_data_master_byteenable),
      .cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in           (cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in (cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_read                                              (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in   (cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in          (cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_waitrequest                                       (cpu_data_master_waitrequest),
      .cpu_data_master_write                                             (cpu_data_master_write),
      .cpu_data_master_writedata                                         (cpu_data_master_writedata),
      .d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer                       (d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer),
      .reset_n                                                           (pll_cpu_reset_n)
    );

  DE4_230_HDMI_TX_SOPC_clock_0_out_arbitrator the_DE4_230_HDMI_TX_SOPC_clock_0_out
    (
      .DE4_230_HDMI_TX_SOPC_clock_0_out_address                         (DE4_230_HDMI_TX_SOPC_clock_0_out_address),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave                (DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable                      (DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave           (DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave (DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_read                            (DE4_230_HDMI_TX_SOPC_clock_0_out_read),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave   (DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_readdata                        (DE4_230_HDMI_TX_SOPC_clock_0_out_readdata),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave          (DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n                         (DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest                     (DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_write                           (DE4_230_HDMI_TX_SOPC_clock_0_out_write),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_writedata                       (DE4_230_HDMI_TX_SOPC_clock_0_out_writedata),
      .clk                                                              (clk),
      .d1_pll_pll_slave_end_xfer                                        (d1_pll_pll_slave_end_xfer),
      .pll_pll_slave_readdata_from_sa                                   (pll_pll_slave_readdata_from_sa),
      .reset_n                                                          (clk_reset_n)
    );

  DE4_230_HDMI_TX_SOPC_clock_0 the_DE4_230_HDMI_TX_SOPC_clock_0
    (
      .master_address       (DE4_230_HDMI_TX_SOPC_clock_0_out_address),
      .master_byteenable    (DE4_230_HDMI_TX_SOPC_clock_0_out_byteenable),
      .master_clk           (clk),
      .master_endofpacket   (DE4_230_HDMI_TX_SOPC_clock_0_out_endofpacket),
      .master_nativeaddress (DE4_230_HDMI_TX_SOPC_clock_0_out_nativeaddress),
      .master_read          (DE4_230_HDMI_TX_SOPC_clock_0_out_read),
      .master_readdata      (DE4_230_HDMI_TX_SOPC_clock_0_out_readdata),
      .master_reset_n       (DE4_230_HDMI_TX_SOPC_clock_0_out_reset_n),
      .master_waitrequest   (DE4_230_HDMI_TX_SOPC_clock_0_out_waitrequest),
      .master_write         (DE4_230_HDMI_TX_SOPC_clock_0_out_write),
      .master_writedata     (DE4_230_HDMI_TX_SOPC_clock_0_out_writedata),
      .slave_address        (DE4_230_HDMI_TX_SOPC_clock_0_in_address),
      .slave_byteenable     (DE4_230_HDMI_TX_SOPC_clock_0_in_byteenable),
      .slave_clk            (pll_cpu),
      .slave_endofpacket    (DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket),
      .slave_nativeaddress  (DE4_230_HDMI_TX_SOPC_clock_0_in_nativeaddress),
      .slave_read           (DE4_230_HDMI_TX_SOPC_clock_0_in_read),
      .slave_readdata       (DE4_230_HDMI_TX_SOPC_clock_0_in_readdata),
      .slave_reset_n        (DE4_230_HDMI_TX_SOPC_clock_0_in_reset_n),
      .slave_waitrequest    (DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest),
      .slave_write          (DE4_230_HDMI_TX_SOPC_clock_0_in_write),
      .slave_writedata      (DE4_230_HDMI_TX_SOPC_clock_0_in_writedata)
    );

  clock_crossing_bridge_s1_arbitrator the_clock_crossing_bridge_s1
    (
      .clk                                                                     (pll_cpu),
      .clock_crossing_bridge_s1_address                                        (clock_crossing_bridge_s1_address),
      .clock_crossing_bridge_s1_byteenable                                     (clock_crossing_bridge_s1_byteenable),
      .clock_crossing_bridge_s1_endofpacket                                    (clock_crossing_bridge_s1_endofpacket),
      .clock_crossing_bridge_s1_endofpacket_from_sa                            (clock_crossing_bridge_s1_endofpacket_from_sa),
      .clock_crossing_bridge_s1_nativeaddress                                  (clock_crossing_bridge_s1_nativeaddress),
      .clock_crossing_bridge_s1_read                                           (clock_crossing_bridge_s1_read),
      .clock_crossing_bridge_s1_readdata                                       (clock_crossing_bridge_s1_readdata),
      .clock_crossing_bridge_s1_readdata_from_sa                               (clock_crossing_bridge_s1_readdata_from_sa),
      .clock_crossing_bridge_s1_readdatavalid                                  (clock_crossing_bridge_s1_readdatavalid),
      .clock_crossing_bridge_s1_reset_n                                        (clock_crossing_bridge_s1_reset_n),
      .clock_crossing_bridge_s1_waitrequest                                    (clock_crossing_bridge_s1_waitrequest),
      .clock_crossing_bridge_s1_waitrequest_from_sa                            (clock_crossing_bridge_s1_waitrequest_from_sa),
      .clock_crossing_bridge_s1_write                                          (clock_crossing_bridge_s1_write),
      .clock_crossing_bridge_s1_writedata                                      (clock_crossing_bridge_s1_writedata),
      .cpu_data_master_address_to_slave                                        (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                              (cpu_data_master_byteenable),
      .cpu_data_master_granted_clock_crossing_bridge_s1                        (cpu_data_master_granted_clock_crossing_bridge_s1),
      .cpu_data_master_qualified_request_clock_crossing_bridge_s1              (cpu_data_master_qualified_request_clock_crossing_bridge_s1),
      .cpu_data_master_read                                                    (cpu_data_master_read),
      .cpu_data_master_read_data_valid_clock_crossing_bridge_s1                (cpu_data_master_read_data_valid_clock_crossing_bridge_s1),
      .cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register (cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register),
      .cpu_data_master_requests_clock_crossing_bridge_s1                       (cpu_data_master_requests_clock_crossing_bridge_s1),
      .cpu_data_master_waitrequest                                             (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                   (cpu_data_master_write),
      .cpu_data_master_writedata                                               (cpu_data_master_writedata),
      .d1_clock_crossing_bridge_s1_end_xfer                                    (d1_clock_crossing_bridge_s1_end_xfer),
      .reset_n                                                                 (pll_cpu_reset_n)
    );

  clock_crossing_bridge_m1_arbitrator the_clock_crossing_bridge_m1
    (
      .clk                                                               (pll_io),
      .clock_crossing_bridge_m1_address                                  (clock_crossing_bridge_m1_address),
      .clock_crossing_bridge_m1_address_to_slave                         (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_byteenable                               (clock_crossing_bridge_m1_byteenable),
      .clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1               (clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1               (clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1               (clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1               (clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1                   (clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1               (clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1                 (clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1               (clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1               (clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1                 (clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1               (clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1                  (clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1             (clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1               (clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1               (clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1                 (clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1               (clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1             (clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_granted_pio_button_s1                    (clock_crossing_bridge_m1_granted_pio_button_s1),
      .clock_crossing_bridge_m1_granted_pio_led_s1                       (clock_crossing_bridge_m1_granted_pio_led_s1),
      .clock_crossing_bridge_m1_granted_sysid_control_slave              (clock_crossing_bridge_m1_granted_sysid_control_slave),
      .clock_crossing_bridge_m1_granted_timer_s1                         (clock_crossing_bridge_m1_granted_timer_s1),
      .clock_crossing_bridge_m1_latency_counter                          (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1         (clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1       (clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1       (clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1        (clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1   (clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1       (clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1     (clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1   (clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_qualified_request_pio_button_s1          (clock_crossing_bridge_m1_qualified_request_pio_button_s1),
      .clock_crossing_bridge_m1_qualified_request_pio_led_s1             (clock_crossing_bridge_m1_qualified_request_pio_led_s1),
      .clock_crossing_bridge_m1_qualified_request_sysid_control_slave    (clock_crossing_bridge_m1_qualified_request_sysid_control_slave),
      .clock_crossing_bridge_m1_qualified_request_timer_s1               (clock_crossing_bridge_m1_qualified_request_timer_s1),
      .clock_crossing_bridge_m1_read                                     (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1           (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1         (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1         (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1          (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1     (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1         (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1       (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1     (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_read_data_valid_pio_button_s1            (clock_crossing_bridge_m1_read_data_valid_pio_button_s1),
      .clock_crossing_bridge_m1_read_data_valid_pio_led_s1               (clock_crossing_bridge_m1_read_data_valid_pio_led_s1),
      .clock_crossing_bridge_m1_read_data_valid_sysid_control_slave      (clock_crossing_bridge_m1_read_data_valid_sysid_control_slave),
      .clock_crossing_bridge_m1_read_data_valid_timer_s1                 (clock_crossing_bridge_m1_read_data_valid_timer_s1),
      .clock_crossing_bridge_m1_readdata                                 (clock_crossing_bridge_m1_readdata),
      .clock_crossing_bridge_m1_readdatavalid                            (clock_crossing_bridge_m1_readdatavalid),
      .clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1              (clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1              (clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1              (clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1              (clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1                  (clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1              (clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1                (clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1              (clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1              (clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1                (clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1              (clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1                 (clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1            (clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1              (clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1              (clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1                (clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1              (clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1            (clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_requests_pio_button_s1                   (clock_crossing_bridge_m1_requests_pio_button_s1),
      .clock_crossing_bridge_m1_requests_pio_led_s1                      (clock_crossing_bridge_m1_requests_pio_led_s1),
      .clock_crossing_bridge_m1_requests_sysid_control_slave             (clock_crossing_bridge_m1_requests_sysid_control_slave),
      .clock_crossing_bridge_m1_requests_timer_s1                        (clock_crossing_bridge_m1_requests_timer_s1),
      .clock_crossing_bridge_m1_reset_n                                  (clock_crossing_bridge_m1_reset_n),
      .clock_crossing_bridge_m1_waitrequest                              (clock_crossing_bridge_m1_waitrequest),
      .clock_crossing_bridge_m1_write                                    (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                                (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx0_ep_scl_s1_end_xfer                                    (d1_hdmi_rx0_ep_scl_s1_end_xfer),
      .d1_hdmi_rx0_ep_sda_s1_end_xfer                                    (d1_hdmi_rx0_ep_sda_s1_end_xfer),
      .d1_hdmi_rx1_ep_scl_s1_end_xfer                                    (d1_hdmi_rx1_ep_scl_s1_end_xfer),
      .d1_hdmi_rx1_ep_sda_s1_end_xfer                                    (d1_hdmi_rx1_ep_sda_s1_end_xfer),
      .d1_hdmi_rx_cec_s1_end_xfer                                        (d1_hdmi_rx_cec_s1_end_xfer),
      .d1_hdmi_rx_edid_wp_s1_end_xfer                                    (d1_hdmi_rx_edid_wp_s1_end_xfer),
      .d1_hdmi_rx_hpd_n_s1_end_xfer                                      (d1_hdmi_rx_hpd_n_s1_end_xfer),
      .d1_hdmi_rx_i2c_scl_s1_end_xfer                                    (d1_hdmi_rx_i2c_scl_s1_end_xfer),
      .d1_hdmi_rx_i2c_sda_s1_end_xfer                                    (d1_hdmi_rx_i2c_sda_s1_end_xfer),
      .d1_hdmi_rx_irq_n_s1_end_xfer                                      (d1_hdmi_rx_irq_n_s1_end_xfer),
      .d1_hdmi_rx_reset_n_s1_end_xfer                                    (d1_hdmi_rx_reset_n_s1_end_xfer),
      .d1_hdmi_rx_sync_s1_end_xfer                                       (d1_hdmi_rx_sync_s1_end_xfer),
      .d1_hdmi_tx_disp_mode_s1_end_xfer                                  (d1_hdmi_tx_disp_mode_s1_end_xfer),
      .d1_hdmi_tx_i2c_scl_s1_end_xfer                                    (d1_hdmi_tx_i2c_scl_s1_end_xfer),
      .d1_hdmi_tx_i2c_sda_s1_end_xfer                                    (d1_hdmi_tx_i2c_sda_s1_end_xfer),
      .d1_hdmi_tx_irq_n_s1_end_xfer                                      (d1_hdmi_tx_irq_n_s1_end_xfer),
      .d1_hdmi_tx_mode_change_s1_end_xfer                                (d1_hdmi_tx_mode_change_s1_end_xfer),
      .d1_hdmi_tx_reset_n_s1_end_xfer                                    (d1_hdmi_tx_reset_n_s1_end_xfer),
      .d1_hdmi_tx_vpg_color_s1_end_xfer                                  (d1_hdmi_tx_vpg_color_s1_end_xfer),
      .d1_pio_button_s1_end_xfer                                         (d1_pio_button_s1_end_xfer),
      .d1_pio_led_s1_end_xfer                                            (d1_pio_led_s1_end_xfer),
      .d1_sysid_control_slave_end_xfer                                   (d1_sysid_control_slave_end_xfer),
      .d1_timer_s1_end_xfer                                              (d1_timer_s1_end_xfer),
      .hdmi_rx0_ep_scl_s1_readdata_from_sa                               (hdmi_rx0_ep_scl_s1_readdata_from_sa),
      .hdmi_rx0_ep_sda_s1_readdata_from_sa                               (hdmi_rx0_ep_sda_s1_readdata_from_sa),
      .hdmi_rx1_ep_scl_s1_readdata_from_sa                               (hdmi_rx1_ep_scl_s1_readdata_from_sa),
      .hdmi_rx1_ep_sda_s1_readdata_from_sa                               (hdmi_rx1_ep_sda_s1_readdata_from_sa),
      .hdmi_rx_cec_s1_readdata_from_sa                                   (hdmi_rx_cec_s1_readdata_from_sa),
      .hdmi_rx_edid_wp_s1_readdata_from_sa                               (hdmi_rx_edid_wp_s1_readdata_from_sa),
      .hdmi_rx_hpd_n_s1_readdata_from_sa                                 (hdmi_rx_hpd_n_s1_readdata_from_sa),
      .hdmi_rx_i2c_scl_s1_readdata_from_sa                               (hdmi_rx_i2c_scl_s1_readdata_from_sa),
      .hdmi_rx_i2c_sda_s1_readdata_from_sa                               (hdmi_rx_i2c_sda_s1_readdata_from_sa),
      .hdmi_rx_irq_n_s1_readdata_from_sa                                 (hdmi_rx_irq_n_s1_readdata_from_sa),
      .hdmi_rx_reset_n_s1_readdata_from_sa                               (hdmi_rx_reset_n_s1_readdata_from_sa),
      .hdmi_rx_sync_s1_readdata_from_sa                                  (hdmi_rx_sync_s1_readdata_from_sa),
      .hdmi_tx_disp_mode_s1_readdata_from_sa                             (hdmi_tx_disp_mode_s1_readdata_from_sa),
      .hdmi_tx_i2c_scl_s1_readdata_from_sa                               (hdmi_tx_i2c_scl_s1_readdata_from_sa),
      .hdmi_tx_i2c_sda_s1_readdata_from_sa                               (hdmi_tx_i2c_sda_s1_readdata_from_sa),
      .hdmi_tx_irq_n_s1_readdata_from_sa                                 (hdmi_tx_irq_n_s1_readdata_from_sa),
      .hdmi_tx_mode_change_s1_readdata_from_sa                           (hdmi_tx_mode_change_s1_readdata_from_sa),
      .hdmi_tx_reset_n_s1_readdata_from_sa                               (hdmi_tx_reset_n_s1_readdata_from_sa),
      .hdmi_tx_vpg_color_s1_readdata_from_sa                             (hdmi_tx_vpg_color_s1_readdata_from_sa),
      .pio_button_s1_readdata_from_sa                                    (pio_button_s1_readdata_from_sa),
      .pio_led_s1_readdata_from_sa                                       (pio_led_s1_readdata_from_sa),
      .reset_n                                                           (pll_io_reset_n),
      .sysid_control_slave_readdata_from_sa                              (sysid_control_slave_readdata_from_sa),
      .timer_s1_readdata_from_sa                                         (timer_s1_readdata_from_sa)
    );

  clock_crossing_bridge the_clock_crossing_bridge
    (
      .master_address       (clock_crossing_bridge_m1_address),
      .master_byteenable    (clock_crossing_bridge_m1_byteenable),
      .master_clk           (pll_io),
      .master_endofpacket   (clock_crossing_bridge_m1_endofpacket),
      .master_nativeaddress (clock_crossing_bridge_m1_nativeaddress),
      .master_read          (clock_crossing_bridge_m1_read),
      .master_readdata      (clock_crossing_bridge_m1_readdata),
      .master_readdatavalid (clock_crossing_bridge_m1_readdatavalid),
      .master_reset_n       (clock_crossing_bridge_m1_reset_n),
      .master_waitrequest   (clock_crossing_bridge_m1_waitrequest),
      .master_write         (clock_crossing_bridge_m1_write),
      .master_writedata     (clock_crossing_bridge_m1_writedata),
      .slave_address        (clock_crossing_bridge_s1_address),
      .slave_byteenable     (clock_crossing_bridge_s1_byteenable),
      .slave_clk            (pll_cpu),
      .slave_endofpacket    (clock_crossing_bridge_s1_endofpacket),
      .slave_nativeaddress  (clock_crossing_bridge_s1_nativeaddress),
      .slave_read           (clock_crossing_bridge_s1_read),
      .slave_readdata       (clock_crossing_bridge_s1_readdata),
      .slave_readdatavalid  (clock_crossing_bridge_s1_readdatavalid),
      .slave_reset_n        (clock_crossing_bridge_s1_reset_n),
      .slave_waitrequest    (clock_crossing_bridge_s1_waitrequest),
      .slave_write          (clock_crossing_bridge_s1_write),
      .slave_writedata      (clock_crossing_bridge_s1_writedata)
    );

  cpu_jtag_debug_module_arbitrator the_cpu_jtag_debug_module
    (
      .clk                                                            (pll_cpu),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_debugaccess                                    (cpu_data_master_debugaccess),
      .cpu_data_master_granted_cpu_jtag_debug_module                  (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module        (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module          (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_requests_cpu_jtag_debug_module                 (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_waitrequest                                    (cpu_data_master_waitrequest),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                      (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_jtag_debug_module_address                                  (cpu_jtag_debug_module_address),
      .cpu_jtag_debug_module_begintransfer                            (cpu_jtag_debug_module_begintransfer),
      .cpu_jtag_debug_module_byteenable                               (cpu_jtag_debug_module_byteenable),
      .cpu_jtag_debug_module_chipselect                               (cpu_jtag_debug_module_chipselect),
      .cpu_jtag_debug_module_debugaccess                              (cpu_jtag_debug_module_debugaccess),
      .cpu_jtag_debug_module_readdata                                 (cpu_jtag_debug_module_readdata),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .cpu_jtag_debug_module_reset_n                                  (cpu_jtag_debug_module_reset_n),
      .cpu_jtag_debug_module_resetrequest                             (cpu_jtag_debug_module_resetrequest),
      .cpu_jtag_debug_module_resetrequest_from_sa                     (cpu_jtag_debug_module_resetrequest_from_sa),
      .cpu_jtag_debug_module_write                                    (cpu_jtag_debug_module_write),
      .cpu_jtag_debug_module_writedata                                (cpu_jtag_debug_module_writedata),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                        (pll_cpu_reset_n)
    );

  cpu_data_master_arbitrator the_cpu_data_master
    (
      .DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa                        (DE4_230_HDMI_TX_SOPC_clock_0_in_readdata_from_sa),
      .DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa                     (DE4_230_HDMI_TX_SOPC_clock_0_in_waitrequest_from_sa),
      .clk                                                                     (pll_cpu),
      .clock_crossing_bridge_s1_readdata_from_sa                               (clock_crossing_bridge_s1_readdata_from_sa),
      .clock_crossing_bridge_s1_waitrequest_from_sa                            (clock_crossing_bridge_s1_waitrequest_from_sa),
      .cpu_data_master_address                                                 (cpu_data_master_address),
      .cpu_data_master_address_to_slave                                        (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in                 (cpu_data_master_granted_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_granted_clock_crossing_bridge_s1                        (cpu_data_master_granted_clock_crossing_bridge_s1),
      .cpu_data_master_granted_cpu_jtag_debug_module                           (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_granted_i2s_tx_slave                                    (cpu_data_master_granted_i2s_tx_slave),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave                     (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_granted_onchip_memory2_s1                               (cpu_data_master_granted_onchip_memory2_s1),
      .cpu_data_master_irq                                                     (cpu_data_master_irq),
      .cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in       (cpu_data_master_qualified_request_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_qualified_request_clock_crossing_bridge_s1              (cpu_data_master_qualified_request_clock_crossing_bridge_s1),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module                 (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_i2s_tx_slave                          (cpu_data_master_qualified_request_i2s_tx_slave),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave           (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_qualified_request_onchip_memory2_s1                     (cpu_data_master_qualified_request_onchip_memory2_s1),
      .cpu_data_master_read                                                    (cpu_data_master_read),
      .cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in         (cpu_data_master_read_data_valid_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_read_data_valid_clock_crossing_bridge_s1                (cpu_data_master_read_data_valid_clock_crossing_bridge_s1),
      .cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register (cpu_data_master_read_data_valid_clock_crossing_bridge_s1_shift_register),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module                   (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_read_data_valid_i2s_tx_slave                            (cpu_data_master_read_data_valid_i2s_tx_slave),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave             (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read_data_valid_onchip_memory2_s1                       (cpu_data_master_read_data_valid_onchip_memory2_s1),
      .cpu_data_master_readdata                                                (cpu_data_master_readdata),
      .cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in                (cpu_data_master_requests_DE4_230_HDMI_TX_SOPC_clock_0_in),
      .cpu_data_master_requests_clock_crossing_bridge_s1                       (cpu_data_master_requests_clock_crossing_bridge_s1),
      .cpu_data_master_requests_cpu_jtag_debug_module                          (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_requests_i2s_tx_slave                                   (cpu_data_master_requests_i2s_tx_slave),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave                    (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_onchip_memory2_s1                              (cpu_data_master_requests_onchip_memory2_s1),
      .cpu_data_master_waitrequest                                             (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                   (cpu_data_master_write),
      .cpu_jtag_debug_module_readdata_from_sa                                  (cpu_jtag_debug_module_readdata_from_sa),
      .d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer                             (d1_DE4_230_HDMI_TX_SOPC_clock_0_in_end_xfer),
      .d1_clock_crossing_bridge_s1_end_xfer                                    (d1_clock_crossing_bridge_s1_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                                       (d1_cpu_jtag_debug_module_end_xfer),
      .d1_i2s_tx_slave_end_xfer                                                (d1_i2s_tx_slave_end_xfer),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                                 (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .d1_onchip_memory2_s1_end_xfer                                           (d1_onchip_memory2_s1_end_xfer),
      .hdmi_tx_irq_n_s1_irq_from_sa                                            (hdmi_tx_irq_n_s1_irq_from_sa),
      .i2s_tx_slave_irq_from_sa                                                (i2s_tx_slave_irq_from_sa),
      .i2s_tx_slave_readdata_from_sa                                           (i2s_tx_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                                 (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                            (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa                         (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .onchip_memory2_s1_readdata_from_sa                                      (onchip_memory2_s1_readdata_from_sa),
      .pio_button_s1_irq_from_sa                                               (pio_button_s1_irq_from_sa),
      .pll_cpu                                                                 (pll_cpu),
      .pll_cpu_reset_n                                                         (pll_cpu_reset_n),
      .registered_cpu_data_master_read_data_valid_onchip_memory2_s1            (registered_cpu_data_master_read_data_valid_onchip_memory2_s1),
      .reset_n                                                                 (pll_cpu_reset_n),
      .timer_s1_irq_from_sa                                                    (timer_s1_irq_from_sa)
    );

  cpu_instruction_master_arbitrator the_cpu_instruction_master
    (
      .clk                                                            (pll_cpu),
      .cpu_instruction_master_address                                 (cpu_instruction_master_address),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_granted_onchip_memory2_s1               (cpu_instruction_master_granted_onchip_memory2_s1),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_qualified_request_onchip_memory2_s1     (cpu_instruction_master_qualified_request_onchip_memory2_s1),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_read_data_valid_onchip_memory2_s1       (cpu_instruction_master_read_data_valid_onchip_memory2_s1),
      .cpu_instruction_master_readdata                                (cpu_instruction_master_readdata),
      .cpu_instruction_master_readdatavalid                           (cpu_instruction_master_readdatavalid),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_onchip_memory2_s1              (cpu_instruction_master_requests_onchip_memory2_s1),
      .cpu_instruction_master_waitrequest                             (cpu_instruction_master_waitrequest),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .d1_onchip_memory2_s1_end_xfer                                  (d1_onchip_memory2_s1_end_xfer),
      .onchip_memory2_s1_readdata_from_sa                             (onchip_memory2_s1_readdata_from_sa),
      .reset_n                                                        (pll_cpu_reset_n)
    );

  cpu the_cpu
    (
      .clk                                   (pll_cpu),
      .d_address                             (cpu_data_master_address),
      .d_byteenable                          (cpu_data_master_byteenable),
      .d_irq                                 (cpu_data_master_irq),
      .d_read                                (cpu_data_master_read),
      .d_readdata                            (cpu_data_master_readdata),
      .d_waitrequest                         (cpu_data_master_waitrequest),
      .d_write                               (cpu_data_master_write),
      .d_writedata                           (cpu_data_master_writedata),
      .i_address                             (cpu_instruction_master_address),
      .i_read                                (cpu_instruction_master_read),
      .i_readdata                            (cpu_instruction_master_readdata),
      .i_readdatavalid                       (cpu_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_jtag_debug_module_writedata),
      .reset_n                               (cpu_jtag_debug_module_reset_n)
    );

  hdmi_rx0_ep_scl_s1_arbitrator the_hdmi_rx0_ep_scl_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1           (clock_crossing_bridge_m1_granted_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1          (clock_crossing_bridge_m1_requests_hdmi_rx0_ep_scl_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx0_ep_scl_s1_end_xfer                                (d1_hdmi_rx0_ep_scl_s1_end_xfer),
      .hdmi_rx0_ep_scl_s1_address                                    (hdmi_rx0_ep_scl_s1_address),
      .hdmi_rx0_ep_scl_s1_chipselect                                 (hdmi_rx0_ep_scl_s1_chipselect),
      .hdmi_rx0_ep_scl_s1_readdata                                   (hdmi_rx0_ep_scl_s1_readdata),
      .hdmi_rx0_ep_scl_s1_readdata_from_sa                           (hdmi_rx0_ep_scl_s1_readdata_from_sa),
      .hdmi_rx0_ep_scl_s1_reset_n                                    (hdmi_rx0_ep_scl_s1_reset_n),
      .hdmi_rx0_ep_scl_s1_write_n                                    (hdmi_rx0_ep_scl_s1_write_n),
      .hdmi_rx0_ep_scl_s1_writedata                                  (hdmi_rx0_ep_scl_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx0_ep_scl the_hdmi_rx0_ep_scl
    (
      .address    (hdmi_rx0_ep_scl_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx0_ep_scl),
      .chipselect (hdmi_rx0_ep_scl_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx0_ep_scl_s1_readdata),
      .reset_n    (hdmi_rx0_ep_scl_s1_reset_n),
      .write_n    (hdmi_rx0_ep_scl_s1_write_n),
      .writedata  (hdmi_rx0_ep_scl_s1_writedata)
    );

  hdmi_rx0_ep_sda_s1_arbitrator the_hdmi_rx0_ep_sda_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1           (clock_crossing_bridge_m1_granted_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1          (clock_crossing_bridge_m1_requests_hdmi_rx0_ep_sda_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx0_ep_sda_s1_end_xfer                                (d1_hdmi_rx0_ep_sda_s1_end_xfer),
      .hdmi_rx0_ep_sda_s1_address                                    (hdmi_rx0_ep_sda_s1_address),
      .hdmi_rx0_ep_sda_s1_chipselect                                 (hdmi_rx0_ep_sda_s1_chipselect),
      .hdmi_rx0_ep_sda_s1_readdata                                   (hdmi_rx0_ep_sda_s1_readdata),
      .hdmi_rx0_ep_sda_s1_readdata_from_sa                           (hdmi_rx0_ep_sda_s1_readdata_from_sa),
      .hdmi_rx0_ep_sda_s1_reset_n                                    (hdmi_rx0_ep_sda_s1_reset_n),
      .hdmi_rx0_ep_sda_s1_write_n                                    (hdmi_rx0_ep_sda_s1_write_n),
      .hdmi_rx0_ep_sda_s1_writedata                                  (hdmi_rx0_ep_sda_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx0_ep_sda the_hdmi_rx0_ep_sda
    (
      .address    (hdmi_rx0_ep_sda_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx0_ep_sda),
      .chipselect (hdmi_rx0_ep_sda_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx0_ep_sda_s1_readdata),
      .reset_n    (hdmi_rx0_ep_sda_s1_reset_n),
      .write_n    (hdmi_rx0_ep_sda_s1_write_n),
      .writedata  (hdmi_rx0_ep_sda_s1_writedata)
    );

  hdmi_rx1_ep_scl_s1_arbitrator the_hdmi_rx1_ep_scl_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1           (clock_crossing_bridge_m1_granted_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1          (clock_crossing_bridge_m1_requests_hdmi_rx1_ep_scl_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx1_ep_scl_s1_end_xfer                                (d1_hdmi_rx1_ep_scl_s1_end_xfer),
      .hdmi_rx1_ep_scl_s1_address                                    (hdmi_rx1_ep_scl_s1_address),
      .hdmi_rx1_ep_scl_s1_chipselect                                 (hdmi_rx1_ep_scl_s1_chipselect),
      .hdmi_rx1_ep_scl_s1_readdata                                   (hdmi_rx1_ep_scl_s1_readdata),
      .hdmi_rx1_ep_scl_s1_readdata_from_sa                           (hdmi_rx1_ep_scl_s1_readdata_from_sa),
      .hdmi_rx1_ep_scl_s1_reset_n                                    (hdmi_rx1_ep_scl_s1_reset_n),
      .hdmi_rx1_ep_scl_s1_write_n                                    (hdmi_rx1_ep_scl_s1_write_n),
      .hdmi_rx1_ep_scl_s1_writedata                                  (hdmi_rx1_ep_scl_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx1_ep_scl the_hdmi_rx1_ep_scl
    (
      .address    (hdmi_rx1_ep_scl_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx1_ep_scl),
      .chipselect (hdmi_rx1_ep_scl_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx1_ep_scl_s1_readdata),
      .reset_n    (hdmi_rx1_ep_scl_s1_reset_n),
      .write_n    (hdmi_rx1_ep_scl_s1_write_n),
      .writedata  (hdmi_rx1_ep_scl_s1_writedata)
    );

  hdmi_rx1_ep_sda_s1_arbitrator the_hdmi_rx1_ep_sda_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1           (clock_crossing_bridge_m1_granted_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1          (clock_crossing_bridge_m1_requests_hdmi_rx1_ep_sda_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx1_ep_sda_s1_end_xfer                                (d1_hdmi_rx1_ep_sda_s1_end_xfer),
      .hdmi_rx1_ep_sda_s1_address                                    (hdmi_rx1_ep_sda_s1_address),
      .hdmi_rx1_ep_sda_s1_chipselect                                 (hdmi_rx1_ep_sda_s1_chipselect),
      .hdmi_rx1_ep_sda_s1_readdata                                   (hdmi_rx1_ep_sda_s1_readdata),
      .hdmi_rx1_ep_sda_s1_readdata_from_sa                           (hdmi_rx1_ep_sda_s1_readdata_from_sa),
      .hdmi_rx1_ep_sda_s1_reset_n                                    (hdmi_rx1_ep_sda_s1_reset_n),
      .hdmi_rx1_ep_sda_s1_write_n                                    (hdmi_rx1_ep_sda_s1_write_n),
      .hdmi_rx1_ep_sda_s1_writedata                                  (hdmi_rx1_ep_sda_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx1_ep_sda the_hdmi_rx1_ep_sda
    (
      .address    (hdmi_rx1_ep_sda_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx1_ep_sda),
      .chipselect (hdmi_rx1_ep_sda_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx1_ep_sda_s1_readdata),
      .reset_n    (hdmi_rx1_ep_sda_s1_reset_n),
      .write_n    (hdmi_rx1_ep_sda_s1_write_n),
      .writedata  (hdmi_rx1_ep_sda_s1_writedata)
    );

  hdmi_rx_cec_s1_arbitrator the_hdmi_rx_cec_s1
    (
      .clk                                                       (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                 (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_latency_counter                  (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                    (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_read                             (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_cec_s1),
      .clock_crossing_bridge_m1_write                            (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                        (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_cec_s1_end_xfer                                (d1_hdmi_rx_cec_s1_end_xfer),
      .hdmi_rx_cec_s1_address                                    (hdmi_rx_cec_s1_address),
      .hdmi_rx_cec_s1_chipselect                                 (hdmi_rx_cec_s1_chipselect),
      .hdmi_rx_cec_s1_readdata                                   (hdmi_rx_cec_s1_readdata),
      .hdmi_rx_cec_s1_readdata_from_sa                           (hdmi_rx_cec_s1_readdata_from_sa),
      .hdmi_rx_cec_s1_reset_n                                    (hdmi_rx_cec_s1_reset_n),
      .hdmi_rx_cec_s1_write_n                                    (hdmi_rx_cec_s1_write_n),
      .hdmi_rx_cec_s1_writedata                                  (hdmi_rx_cec_s1_writedata),
      .reset_n                                                   (pll_io_reset_n)
    );

  hdmi_rx_cec the_hdmi_rx_cec
    (
      .address    (hdmi_rx_cec_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx_cec),
      .chipselect (hdmi_rx_cec_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx_cec_s1_readdata),
      .reset_n    (hdmi_rx_cec_s1_reset_n),
      .write_n    (hdmi_rx_cec_s1_write_n),
      .writedata  (hdmi_rx_cec_s1_writedata)
    );

  hdmi_rx_edid_wp_s1_arbitrator the_hdmi_rx_edid_wp_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_edid_wp_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_edid_wp_s1_end_xfer                                (d1_hdmi_rx_edid_wp_s1_end_xfer),
      .hdmi_rx_edid_wp_s1_address                                    (hdmi_rx_edid_wp_s1_address),
      .hdmi_rx_edid_wp_s1_chipselect                                 (hdmi_rx_edid_wp_s1_chipselect),
      .hdmi_rx_edid_wp_s1_readdata                                   (hdmi_rx_edid_wp_s1_readdata),
      .hdmi_rx_edid_wp_s1_readdata_from_sa                           (hdmi_rx_edid_wp_s1_readdata_from_sa),
      .hdmi_rx_edid_wp_s1_reset_n                                    (hdmi_rx_edid_wp_s1_reset_n),
      .hdmi_rx_edid_wp_s1_write_n                                    (hdmi_rx_edid_wp_s1_write_n),
      .hdmi_rx_edid_wp_s1_writedata                                  (hdmi_rx_edid_wp_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx_edid_wp the_hdmi_rx_edid_wp
    (
      .address    (hdmi_rx_edid_wp_s1_address),
      .chipselect (hdmi_rx_edid_wp_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_rx_edid_wp),
      .readdata   (hdmi_rx_edid_wp_s1_readdata),
      .reset_n    (hdmi_rx_edid_wp_s1_reset_n),
      .write_n    (hdmi_rx_edid_wp_s1_write_n),
      .writedata  (hdmi_rx_edid_wp_s1_writedata)
    );

  hdmi_rx_hpd_n_s1_arbitrator the_hdmi_rx_hpd_n_s1
    (
      .clk                                                         (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                   (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_latency_counter                    (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                      (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_read                               (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_hpd_n_s1),
      .clock_crossing_bridge_m1_write                              (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                          (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_hpd_n_s1_end_xfer                                (d1_hdmi_rx_hpd_n_s1_end_xfer),
      .hdmi_rx_hpd_n_s1_address                                    (hdmi_rx_hpd_n_s1_address),
      .hdmi_rx_hpd_n_s1_chipselect                                 (hdmi_rx_hpd_n_s1_chipselect),
      .hdmi_rx_hpd_n_s1_readdata                                   (hdmi_rx_hpd_n_s1_readdata),
      .hdmi_rx_hpd_n_s1_readdata_from_sa                           (hdmi_rx_hpd_n_s1_readdata_from_sa),
      .hdmi_rx_hpd_n_s1_reset_n                                    (hdmi_rx_hpd_n_s1_reset_n),
      .hdmi_rx_hpd_n_s1_write_n                                    (hdmi_rx_hpd_n_s1_write_n),
      .hdmi_rx_hpd_n_s1_writedata                                  (hdmi_rx_hpd_n_s1_writedata),
      .reset_n                                                     (pll_io_reset_n)
    );

  hdmi_rx_hpd_n the_hdmi_rx_hpd_n
    (
      .address    (hdmi_rx_hpd_n_s1_address),
      .chipselect (hdmi_rx_hpd_n_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_rx_hpd_n),
      .readdata   (hdmi_rx_hpd_n_s1_readdata),
      .reset_n    (hdmi_rx_hpd_n_s1_reset_n),
      .write_n    (hdmi_rx_hpd_n_s1_write_n),
      .writedata  (hdmi_rx_hpd_n_s1_writedata)
    );

  hdmi_rx_i2c_scl_s1_arbitrator the_hdmi_rx_i2c_scl_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_i2c_scl_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_i2c_scl_s1_end_xfer                                (d1_hdmi_rx_i2c_scl_s1_end_xfer),
      .hdmi_rx_i2c_scl_s1_address                                    (hdmi_rx_i2c_scl_s1_address),
      .hdmi_rx_i2c_scl_s1_chipselect                                 (hdmi_rx_i2c_scl_s1_chipselect),
      .hdmi_rx_i2c_scl_s1_readdata                                   (hdmi_rx_i2c_scl_s1_readdata),
      .hdmi_rx_i2c_scl_s1_readdata_from_sa                           (hdmi_rx_i2c_scl_s1_readdata_from_sa),
      .hdmi_rx_i2c_scl_s1_reset_n                                    (hdmi_rx_i2c_scl_s1_reset_n),
      .hdmi_rx_i2c_scl_s1_write_n                                    (hdmi_rx_i2c_scl_s1_write_n),
      .hdmi_rx_i2c_scl_s1_writedata                                  (hdmi_rx_i2c_scl_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx_i2c_scl the_hdmi_rx_i2c_scl
    (
      .address    (hdmi_rx_i2c_scl_s1_address),
      .chipselect (hdmi_rx_i2c_scl_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_rx_i2c_scl),
      .readdata   (hdmi_rx_i2c_scl_s1_readdata),
      .reset_n    (hdmi_rx_i2c_scl_s1_reset_n),
      .write_n    (hdmi_rx_i2c_scl_s1_write_n),
      .writedata  (hdmi_rx_i2c_scl_s1_writedata)
    );

  hdmi_rx_i2c_sda_s1_arbitrator the_hdmi_rx_i2c_sda_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_i2c_sda_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_i2c_sda_s1_end_xfer                                (d1_hdmi_rx_i2c_sda_s1_end_xfer),
      .hdmi_rx_i2c_sda_s1_address                                    (hdmi_rx_i2c_sda_s1_address),
      .hdmi_rx_i2c_sda_s1_chipselect                                 (hdmi_rx_i2c_sda_s1_chipselect),
      .hdmi_rx_i2c_sda_s1_readdata                                   (hdmi_rx_i2c_sda_s1_readdata),
      .hdmi_rx_i2c_sda_s1_readdata_from_sa                           (hdmi_rx_i2c_sda_s1_readdata_from_sa),
      .hdmi_rx_i2c_sda_s1_reset_n                                    (hdmi_rx_i2c_sda_s1_reset_n),
      .hdmi_rx_i2c_sda_s1_write_n                                    (hdmi_rx_i2c_sda_s1_write_n),
      .hdmi_rx_i2c_sda_s1_writedata                                  (hdmi_rx_i2c_sda_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx_i2c_sda the_hdmi_rx_i2c_sda
    (
      .address    (hdmi_rx_i2c_sda_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_rx_i2c_sda),
      .chipselect (hdmi_rx_i2c_sda_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_rx_i2c_sda_s1_readdata),
      .reset_n    (hdmi_rx_i2c_sda_s1_reset_n),
      .write_n    (hdmi_rx_i2c_sda_s1_write_n),
      .writedata  (hdmi_rx_i2c_sda_s1_writedata)
    );

  hdmi_rx_irq_n_s1_arbitrator the_hdmi_rx_irq_n_s1
    (
      .clk                                                         (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                   (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_latency_counter                    (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                      (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_read                               (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_irq_n_s1),
      .clock_crossing_bridge_m1_write                              (clock_crossing_bridge_m1_write),
      .d1_hdmi_rx_irq_n_s1_end_xfer                                (d1_hdmi_rx_irq_n_s1_end_xfer),
      .hdmi_rx_irq_n_s1_address                                    (hdmi_rx_irq_n_s1_address),
      .hdmi_rx_irq_n_s1_readdata                                   (hdmi_rx_irq_n_s1_readdata),
      .hdmi_rx_irq_n_s1_readdata_from_sa                           (hdmi_rx_irq_n_s1_readdata_from_sa),
      .hdmi_rx_irq_n_s1_reset_n                                    (hdmi_rx_irq_n_s1_reset_n),
      .reset_n                                                     (pll_io_reset_n)
    );

  hdmi_rx_irq_n the_hdmi_rx_irq_n
    (
      .address  (hdmi_rx_irq_n_s1_address),
      .clk      (pll_io),
      .in_port  (in_port_to_the_hdmi_rx_irq_n),
      .readdata (hdmi_rx_irq_n_s1_readdata),
      .reset_n  (hdmi_rx_irq_n_s1_reset_n)
    );

  hdmi_rx_reset_n_s1_arbitrator the_hdmi_rx_reset_n_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_reset_n_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_reset_n_s1_end_xfer                                (d1_hdmi_rx_reset_n_s1_end_xfer),
      .hdmi_rx_reset_n_s1_address                                    (hdmi_rx_reset_n_s1_address),
      .hdmi_rx_reset_n_s1_chipselect                                 (hdmi_rx_reset_n_s1_chipselect),
      .hdmi_rx_reset_n_s1_readdata                                   (hdmi_rx_reset_n_s1_readdata),
      .hdmi_rx_reset_n_s1_readdata_from_sa                           (hdmi_rx_reset_n_s1_readdata_from_sa),
      .hdmi_rx_reset_n_s1_reset_n                                    (hdmi_rx_reset_n_s1_reset_n),
      .hdmi_rx_reset_n_s1_write_n                                    (hdmi_rx_reset_n_s1_write_n),
      .hdmi_rx_reset_n_s1_writedata                                  (hdmi_rx_reset_n_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_rx_reset_n the_hdmi_rx_reset_n
    (
      .address    (hdmi_rx_reset_n_s1_address),
      .chipselect (hdmi_rx_reset_n_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_rx_reset_n),
      .readdata   (hdmi_rx_reset_n_s1_readdata),
      .reset_n    (hdmi_rx_reset_n_s1_reset_n),
      .write_n    (hdmi_rx_reset_n_s1_write_n),
      .writedata  (hdmi_rx_reset_n_s1_writedata)
    );

  hdmi_rx_sync_s1_arbitrator the_hdmi_rx_sync_s1
    (
      .clk                                                        (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                  (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1           (clock_crossing_bridge_m1_granted_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_latency_counter                   (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                     (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_read                              (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1          (clock_crossing_bridge_m1_requests_hdmi_rx_sync_s1),
      .clock_crossing_bridge_m1_write                             (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                         (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_rx_sync_s1_end_xfer                                (d1_hdmi_rx_sync_s1_end_xfer),
      .hdmi_rx_sync_s1_address                                    (hdmi_rx_sync_s1_address),
      .hdmi_rx_sync_s1_chipselect                                 (hdmi_rx_sync_s1_chipselect),
      .hdmi_rx_sync_s1_readdata                                   (hdmi_rx_sync_s1_readdata),
      .hdmi_rx_sync_s1_readdata_from_sa                           (hdmi_rx_sync_s1_readdata_from_sa),
      .hdmi_rx_sync_s1_reset_n                                    (hdmi_rx_sync_s1_reset_n),
      .hdmi_rx_sync_s1_write_n                                    (hdmi_rx_sync_s1_write_n),
      .hdmi_rx_sync_s1_writedata                                  (hdmi_rx_sync_s1_writedata),
      .reset_n                                                    (pll_io_reset_n)
    );

  hdmi_rx_sync the_hdmi_rx_sync
    (
      .address    (hdmi_rx_sync_s1_address),
      .chipselect (hdmi_rx_sync_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_rx_sync),
      .readdata   (hdmi_rx_sync_s1_readdata),
      .reset_n    (hdmi_rx_sync_s1_reset_n),
      .write_n    (hdmi_rx_sync_s1_write_n),
      .writedata  (hdmi_rx_sync_s1_writedata)
    );

  hdmi_tx_disp_mode_s1_arbitrator the_hdmi_tx_disp_mode_s1
    (
      .clk                                                             (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                       (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_latency_counter                        (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                          (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_read                                   (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_disp_mode_s1),
      .clock_crossing_bridge_m1_write                                  (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                              (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_disp_mode_s1_end_xfer                                (d1_hdmi_tx_disp_mode_s1_end_xfer),
      .hdmi_tx_disp_mode_s1_address                                    (hdmi_tx_disp_mode_s1_address),
      .hdmi_tx_disp_mode_s1_chipselect                                 (hdmi_tx_disp_mode_s1_chipselect),
      .hdmi_tx_disp_mode_s1_readdata                                   (hdmi_tx_disp_mode_s1_readdata),
      .hdmi_tx_disp_mode_s1_readdata_from_sa                           (hdmi_tx_disp_mode_s1_readdata_from_sa),
      .hdmi_tx_disp_mode_s1_reset_n                                    (hdmi_tx_disp_mode_s1_reset_n),
      .hdmi_tx_disp_mode_s1_write_n                                    (hdmi_tx_disp_mode_s1_write_n),
      .hdmi_tx_disp_mode_s1_writedata                                  (hdmi_tx_disp_mode_s1_writedata),
      .reset_n                                                         (pll_io_reset_n)
    );

  hdmi_tx_disp_mode the_hdmi_tx_disp_mode
    (
      .address    (hdmi_tx_disp_mode_s1_address),
      .chipselect (hdmi_tx_disp_mode_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_tx_disp_mode),
      .readdata   (hdmi_tx_disp_mode_s1_readdata),
      .reset_n    (hdmi_tx_disp_mode_s1_reset_n),
      .write_n    (hdmi_tx_disp_mode_s1_write_n),
      .writedata  (hdmi_tx_disp_mode_s1_writedata)
    );

  hdmi_tx_i2c_scl_s1_arbitrator the_hdmi_tx_i2c_scl_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_i2c_scl_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_i2c_scl_s1_end_xfer                                (d1_hdmi_tx_i2c_scl_s1_end_xfer),
      .hdmi_tx_i2c_scl_s1_address                                    (hdmi_tx_i2c_scl_s1_address),
      .hdmi_tx_i2c_scl_s1_chipselect                                 (hdmi_tx_i2c_scl_s1_chipselect),
      .hdmi_tx_i2c_scl_s1_readdata                                   (hdmi_tx_i2c_scl_s1_readdata),
      .hdmi_tx_i2c_scl_s1_readdata_from_sa                           (hdmi_tx_i2c_scl_s1_readdata_from_sa),
      .hdmi_tx_i2c_scl_s1_reset_n                                    (hdmi_tx_i2c_scl_s1_reset_n),
      .hdmi_tx_i2c_scl_s1_write_n                                    (hdmi_tx_i2c_scl_s1_write_n),
      .hdmi_tx_i2c_scl_s1_writedata                                  (hdmi_tx_i2c_scl_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_tx_i2c_scl the_hdmi_tx_i2c_scl
    (
      .address    (hdmi_tx_i2c_scl_s1_address),
      .chipselect (hdmi_tx_i2c_scl_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_tx_i2c_scl),
      .readdata   (hdmi_tx_i2c_scl_s1_readdata),
      .reset_n    (hdmi_tx_i2c_scl_s1_reset_n),
      .write_n    (hdmi_tx_i2c_scl_s1_write_n),
      .writedata  (hdmi_tx_i2c_scl_s1_writedata)
    );

  hdmi_tx_i2c_sda_s1_arbitrator the_hdmi_tx_i2c_sda_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_i2c_sda_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_i2c_sda_s1_end_xfer                                (d1_hdmi_tx_i2c_sda_s1_end_xfer),
      .hdmi_tx_i2c_sda_s1_address                                    (hdmi_tx_i2c_sda_s1_address),
      .hdmi_tx_i2c_sda_s1_chipselect                                 (hdmi_tx_i2c_sda_s1_chipselect),
      .hdmi_tx_i2c_sda_s1_readdata                                   (hdmi_tx_i2c_sda_s1_readdata),
      .hdmi_tx_i2c_sda_s1_readdata_from_sa                           (hdmi_tx_i2c_sda_s1_readdata_from_sa),
      .hdmi_tx_i2c_sda_s1_reset_n                                    (hdmi_tx_i2c_sda_s1_reset_n),
      .hdmi_tx_i2c_sda_s1_write_n                                    (hdmi_tx_i2c_sda_s1_write_n),
      .hdmi_tx_i2c_sda_s1_writedata                                  (hdmi_tx_i2c_sda_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_tx_i2c_sda the_hdmi_tx_i2c_sda
    (
      .address    (hdmi_tx_i2c_sda_s1_address),
      .bidir_port (bidir_port_to_and_from_the_hdmi_tx_i2c_sda),
      .chipselect (hdmi_tx_i2c_sda_s1_chipselect),
      .clk        (pll_io),
      .readdata   (hdmi_tx_i2c_sda_s1_readdata),
      .reset_n    (hdmi_tx_i2c_sda_s1_reset_n),
      .write_n    (hdmi_tx_i2c_sda_s1_write_n),
      .writedata  (hdmi_tx_i2c_sda_s1_writedata)
    );

  hdmi_tx_irq_n_s1_arbitrator the_hdmi_tx_irq_n_s1
    (
      .clk                                                         (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                   (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_latency_counter                    (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                      (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_read                               (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_irq_n_s1),
      .clock_crossing_bridge_m1_write                              (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                          (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_irq_n_s1_end_xfer                                (d1_hdmi_tx_irq_n_s1_end_xfer),
      .hdmi_tx_irq_n_s1_address                                    (hdmi_tx_irq_n_s1_address),
      .hdmi_tx_irq_n_s1_chipselect                                 (hdmi_tx_irq_n_s1_chipselect),
      .hdmi_tx_irq_n_s1_irq                                        (hdmi_tx_irq_n_s1_irq),
      .hdmi_tx_irq_n_s1_irq_from_sa                                (hdmi_tx_irq_n_s1_irq_from_sa),
      .hdmi_tx_irq_n_s1_readdata                                   (hdmi_tx_irq_n_s1_readdata),
      .hdmi_tx_irq_n_s1_readdata_from_sa                           (hdmi_tx_irq_n_s1_readdata_from_sa),
      .hdmi_tx_irq_n_s1_reset_n                                    (hdmi_tx_irq_n_s1_reset_n),
      .hdmi_tx_irq_n_s1_write_n                                    (hdmi_tx_irq_n_s1_write_n),
      .hdmi_tx_irq_n_s1_writedata                                  (hdmi_tx_irq_n_s1_writedata),
      .reset_n                                                     (pll_io_reset_n)
    );

  hdmi_tx_irq_n the_hdmi_tx_irq_n
    (
      .address    (hdmi_tx_irq_n_s1_address),
      .chipselect (hdmi_tx_irq_n_s1_chipselect),
      .clk        (pll_io),
      .in_port    (in_port_to_the_hdmi_tx_irq_n),
      .irq        (hdmi_tx_irq_n_s1_irq),
      .readdata   (hdmi_tx_irq_n_s1_readdata),
      .reset_n    (hdmi_tx_irq_n_s1_reset_n),
      .write_n    (hdmi_tx_irq_n_s1_write_n),
      .writedata  (hdmi_tx_irq_n_s1_writedata)
    );

  hdmi_tx_mode_change_s1_arbitrator the_hdmi_tx_mode_change_s1
    (
      .clk                                                               (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                         (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_latency_counter                          (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                            (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_read                                     (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_mode_change_s1),
      .clock_crossing_bridge_m1_write                                    (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                                (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_mode_change_s1_end_xfer                                (d1_hdmi_tx_mode_change_s1_end_xfer),
      .hdmi_tx_mode_change_s1_address                                    (hdmi_tx_mode_change_s1_address),
      .hdmi_tx_mode_change_s1_chipselect                                 (hdmi_tx_mode_change_s1_chipselect),
      .hdmi_tx_mode_change_s1_readdata                                   (hdmi_tx_mode_change_s1_readdata),
      .hdmi_tx_mode_change_s1_readdata_from_sa                           (hdmi_tx_mode_change_s1_readdata_from_sa),
      .hdmi_tx_mode_change_s1_reset_n                                    (hdmi_tx_mode_change_s1_reset_n),
      .hdmi_tx_mode_change_s1_write_n                                    (hdmi_tx_mode_change_s1_write_n),
      .hdmi_tx_mode_change_s1_writedata                                  (hdmi_tx_mode_change_s1_writedata),
      .reset_n                                                           (pll_io_reset_n)
    );

  hdmi_tx_mode_change the_hdmi_tx_mode_change
    (
      .address    (hdmi_tx_mode_change_s1_address),
      .chipselect (hdmi_tx_mode_change_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_tx_mode_change),
      .readdata   (hdmi_tx_mode_change_s1_readdata),
      .reset_n    (hdmi_tx_mode_change_s1_reset_n),
      .write_n    (hdmi_tx_mode_change_s1_write_n),
      .writedata  (hdmi_tx_mode_change_s1_writedata)
    );

  hdmi_tx_reset_n_s1_arbitrator the_hdmi_tx_reset_n_s1
    (
      .clk                                                           (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                     (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_latency_counter                      (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                        (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_read                                 (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_reset_n_s1),
      .clock_crossing_bridge_m1_write                                (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                            (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_reset_n_s1_end_xfer                                (d1_hdmi_tx_reset_n_s1_end_xfer),
      .hdmi_tx_reset_n_s1_address                                    (hdmi_tx_reset_n_s1_address),
      .hdmi_tx_reset_n_s1_chipselect                                 (hdmi_tx_reset_n_s1_chipselect),
      .hdmi_tx_reset_n_s1_readdata                                   (hdmi_tx_reset_n_s1_readdata),
      .hdmi_tx_reset_n_s1_readdata_from_sa                           (hdmi_tx_reset_n_s1_readdata_from_sa),
      .hdmi_tx_reset_n_s1_reset_n                                    (hdmi_tx_reset_n_s1_reset_n),
      .hdmi_tx_reset_n_s1_write_n                                    (hdmi_tx_reset_n_s1_write_n),
      .hdmi_tx_reset_n_s1_writedata                                  (hdmi_tx_reset_n_s1_writedata),
      .reset_n                                                       (pll_io_reset_n)
    );

  hdmi_tx_reset_n the_hdmi_tx_reset_n
    (
      .address    (hdmi_tx_reset_n_s1_address),
      .chipselect (hdmi_tx_reset_n_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_tx_reset_n),
      .readdata   (hdmi_tx_reset_n_s1_readdata),
      .reset_n    (hdmi_tx_reset_n_s1_reset_n),
      .write_n    (hdmi_tx_reset_n_s1_write_n),
      .writedata  (hdmi_tx_reset_n_s1_writedata)
    );

  hdmi_tx_vpg_color_s1_arbitrator the_hdmi_tx_vpg_color_s1
    (
      .clk                                                             (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                       (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1           (clock_crossing_bridge_m1_granted_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_latency_counter                        (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                          (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1 (clock_crossing_bridge_m1_qualified_request_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_read                                   (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1   (clock_crossing_bridge_m1_read_data_valid_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1          (clock_crossing_bridge_m1_requests_hdmi_tx_vpg_color_s1),
      .clock_crossing_bridge_m1_write                                  (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                              (clock_crossing_bridge_m1_writedata),
      .d1_hdmi_tx_vpg_color_s1_end_xfer                                (d1_hdmi_tx_vpg_color_s1_end_xfer),
      .hdmi_tx_vpg_color_s1_address                                    (hdmi_tx_vpg_color_s1_address),
      .hdmi_tx_vpg_color_s1_chipselect                                 (hdmi_tx_vpg_color_s1_chipselect),
      .hdmi_tx_vpg_color_s1_readdata                                   (hdmi_tx_vpg_color_s1_readdata),
      .hdmi_tx_vpg_color_s1_readdata_from_sa                           (hdmi_tx_vpg_color_s1_readdata_from_sa),
      .hdmi_tx_vpg_color_s1_reset_n                                    (hdmi_tx_vpg_color_s1_reset_n),
      .hdmi_tx_vpg_color_s1_write_n                                    (hdmi_tx_vpg_color_s1_write_n),
      .hdmi_tx_vpg_color_s1_writedata                                  (hdmi_tx_vpg_color_s1_writedata),
      .reset_n                                                         (pll_io_reset_n)
    );

  hdmi_tx_vpg_color the_hdmi_tx_vpg_color
    (
      .address    (hdmi_tx_vpg_color_s1_address),
      .chipselect (hdmi_tx_vpg_color_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_hdmi_tx_vpg_color),
      .readdata   (hdmi_tx_vpg_color_s1_readdata),
      .reset_n    (hdmi_tx_vpg_color_s1_reset_n),
      .write_n    (hdmi_tx_vpg_color_s1_write_n),
      .writedata  (hdmi_tx_vpg_color_s1_writedata)
    );

  i2s_tx_slave_arbitrator the_i2s_tx_slave
    (
      .clk                                            (pll_cpu),
      .cpu_data_master_address_to_slave               (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_i2s_tx_slave           (cpu_data_master_granted_i2s_tx_slave),
      .cpu_data_master_qualified_request_i2s_tx_slave (cpu_data_master_qualified_request_i2s_tx_slave),
      .cpu_data_master_read                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_i2s_tx_slave   (cpu_data_master_read_data_valid_i2s_tx_slave),
      .cpu_data_master_requests_i2s_tx_slave          (cpu_data_master_requests_i2s_tx_slave),
      .cpu_data_master_waitrequest                    (cpu_data_master_waitrequest),
      .cpu_data_master_write                          (cpu_data_master_write),
      .cpu_data_master_writedata                      (cpu_data_master_writedata),
      .d1_i2s_tx_slave_end_xfer                       (d1_i2s_tx_slave_end_xfer),
      .i2s_tx_slave_address                           (i2s_tx_slave_address),
      .i2s_tx_slave_chipselect                        (i2s_tx_slave_chipselect),
      .i2s_tx_slave_irq                               (i2s_tx_slave_irq),
      .i2s_tx_slave_irq_from_sa                       (i2s_tx_slave_irq_from_sa),
      .i2s_tx_slave_read                              (i2s_tx_slave_read),
      .i2s_tx_slave_readdata                          (i2s_tx_slave_readdata),
      .i2s_tx_slave_readdata_from_sa                  (i2s_tx_slave_readdata_from_sa),
      .i2s_tx_slave_reset                             (i2s_tx_slave_reset),
      .i2s_tx_slave_write                             (i2s_tx_slave_write),
      .i2s_tx_slave_writedata                         (i2s_tx_slave_writedata),
      .reset_n                                        (pll_cpu_reset_n)
    );

  i2s_tx the_i2s_tx
    (
      .i2s_sck      (i2s_sck_to_the_i2s_tx),
      .i2s_sd       (i2s_sd_from_the_i2s_tx),
      .i2s_ws       (i2s_ws_from_the_i2s_tx),
      .s_address    (i2s_tx_slave_address),
      .s_chipselect (i2s_tx_slave_chipselect),
      .s_clk        (pll_cpu),
      .s_irq        (i2s_tx_slave_irq),
      .s_read       (i2s_tx_slave_read),
      .s_readdata   (i2s_tx_slave_readdata),
      .s_reset      (i2s_tx_slave_reset),
      .s_write      (i2s_tx_slave_write),
      .s_writedata  (i2s_tx_slave_writedata)
    );

  jtag_uart_avalon_jtag_slave_arbitrator the_jtag_uart_avalon_jtag_slave
    (
      .clk                                                           (pll_cpu),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_jtag_uart_avalon_jtag_slave           (cpu_data_master_granted_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave (cpu_data_master_qualified_request_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave   (cpu_data_master_read_data_valid_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_requests_jtag_uart_avalon_jtag_slave          (cpu_data_master_requests_jtag_uart_avalon_jtag_slave),
      .cpu_data_master_waitrequest                                   (cpu_data_master_waitrequest),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_data_master_writedata                                     (cpu_data_master_writedata),
      .d1_jtag_uart_avalon_jtag_slave_end_xfer                       (d1_jtag_uart_avalon_jtag_slave_end_xfer),
      .jtag_uart_avalon_jtag_slave_address                           (jtag_uart_avalon_jtag_slave_address),
      .jtag_uart_avalon_jtag_slave_chipselect                        (jtag_uart_avalon_jtag_slave_chipselect),
      .jtag_uart_avalon_jtag_slave_dataavailable                     (jtag_uart_avalon_jtag_slave_dataavailable),
      .jtag_uart_avalon_jtag_slave_dataavailable_from_sa             (jtag_uart_avalon_jtag_slave_dataavailable_from_sa),
      .jtag_uart_avalon_jtag_slave_irq                               (jtag_uart_avalon_jtag_slave_irq),
      .jtag_uart_avalon_jtag_slave_irq_from_sa                       (jtag_uart_avalon_jtag_slave_irq_from_sa),
      .jtag_uart_avalon_jtag_slave_read_n                            (jtag_uart_avalon_jtag_slave_read_n),
      .jtag_uart_avalon_jtag_slave_readdata                          (jtag_uart_avalon_jtag_slave_readdata),
      .jtag_uart_avalon_jtag_slave_readdata_from_sa                  (jtag_uart_avalon_jtag_slave_readdata_from_sa),
      .jtag_uart_avalon_jtag_slave_readyfordata                      (jtag_uart_avalon_jtag_slave_readyfordata),
      .jtag_uart_avalon_jtag_slave_readyfordata_from_sa              (jtag_uart_avalon_jtag_slave_readyfordata_from_sa),
      .jtag_uart_avalon_jtag_slave_reset_n                           (jtag_uart_avalon_jtag_slave_reset_n),
      .jtag_uart_avalon_jtag_slave_waitrequest                       (jtag_uart_avalon_jtag_slave_waitrequest),
      .jtag_uart_avalon_jtag_slave_waitrequest_from_sa               (jtag_uart_avalon_jtag_slave_waitrequest_from_sa),
      .jtag_uart_avalon_jtag_slave_write_n                           (jtag_uart_avalon_jtag_slave_write_n),
      .jtag_uart_avalon_jtag_slave_writedata                         (jtag_uart_avalon_jtag_slave_writedata),
      .reset_n                                                       (pll_cpu_reset_n)
    );

  jtag_uart the_jtag_uart
    (
      .av_address     (jtag_uart_avalon_jtag_slave_address),
      .av_chipselect  (jtag_uart_avalon_jtag_slave_chipselect),
      .av_irq         (jtag_uart_avalon_jtag_slave_irq),
      .av_read_n      (jtag_uart_avalon_jtag_slave_read_n),
      .av_readdata    (jtag_uart_avalon_jtag_slave_readdata),
      .av_waitrequest (jtag_uart_avalon_jtag_slave_waitrequest),
      .av_write_n     (jtag_uart_avalon_jtag_slave_write_n),
      .av_writedata   (jtag_uart_avalon_jtag_slave_writedata),
      .clk            (pll_cpu),
      .dataavailable  (jtag_uart_avalon_jtag_slave_dataavailable),
      .readyfordata   (jtag_uart_avalon_jtag_slave_readyfordata),
      .rst_n          (jtag_uart_avalon_jtag_slave_reset_n)
    );

  onchip_memory2_s1_arbitrator the_onchip_memory2_s1
    (
      .clk                                                          (pll_cpu),
      .cpu_data_master_address_to_slave                             (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                   (cpu_data_master_byteenable),
      .cpu_data_master_granted_onchip_memory2_s1                    (cpu_data_master_granted_onchip_memory2_s1),
      .cpu_data_master_qualified_request_onchip_memory2_s1          (cpu_data_master_qualified_request_onchip_memory2_s1),
      .cpu_data_master_read                                         (cpu_data_master_read),
      .cpu_data_master_read_data_valid_onchip_memory2_s1            (cpu_data_master_read_data_valid_onchip_memory2_s1),
      .cpu_data_master_requests_onchip_memory2_s1                   (cpu_data_master_requests_onchip_memory2_s1),
      .cpu_data_master_waitrequest                                  (cpu_data_master_waitrequest),
      .cpu_data_master_write                                        (cpu_data_master_write),
      .cpu_data_master_writedata                                    (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                      (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_onchip_memory2_s1             (cpu_instruction_master_granted_onchip_memory2_s1),
      .cpu_instruction_master_latency_counter                       (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_onchip_memory2_s1   (cpu_instruction_master_qualified_request_onchip_memory2_s1),
      .cpu_instruction_master_read                                  (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_onchip_memory2_s1     (cpu_instruction_master_read_data_valid_onchip_memory2_s1),
      .cpu_instruction_master_requests_onchip_memory2_s1            (cpu_instruction_master_requests_onchip_memory2_s1),
      .d1_onchip_memory2_s1_end_xfer                                (d1_onchip_memory2_s1_end_xfer),
      .onchip_memory2_s1_address                                    (onchip_memory2_s1_address),
      .onchip_memory2_s1_byteenable                                 (onchip_memory2_s1_byteenable),
      .onchip_memory2_s1_chipselect                                 (onchip_memory2_s1_chipselect),
      .onchip_memory2_s1_clken                                      (onchip_memory2_s1_clken),
      .onchip_memory2_s1_readdata                                   (onchip_memory2_s1_readdata),
      .onchip_memory2_s1_readdata_from_sa                           (onchip_memory2_s1_readdata_from_sa),
      .onchip_memory2_s1_write                                      (onchip_memory2_s1_write),
      .onchip_memory2_s1_writedata                                  (onchip_memory2_s1_writedata),
      .registered_cpu_data_master_read_data_valid_onchip_memory2_s1 (registered_cpu_data_master_read_data_valid_onchip_memory2_s1),
      .reset_n                                                      (pll_cpu_reset_n)
    );

  onchip_memory2 the_onchip_memory2
    (
      .address    (onchip_memory2_s1_address),
      .byteenable (onchip_memory2_s1_byteenable),
      .chipselect (onchip_memory2_s1_chipselect),
      .clk        (pll_cpu),
      .clken      (onchip_memory2_s1_clken),
      .readdata   (onchip_memory2_s1_readdata),
      .write      (onchip_memory2_s1_write),
      .writedata  (onchip_memory2_s1_writedata)
    );

  pio_button_s1_arbitrator the_pio_button_s1
    (
      .clk                                                      (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_pio_button_s1           (clock_crossing_bridge_m1_granted_pio_button_s1),
      .clock_crossing_bridge_m1_latency_counter                 (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                   (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_pio_button_s1 (clock_crossing_bridge_m1_qualified_request_pio_button_s1),
      .clock_crossing_bridge_m1_read                            (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_pio_button_s1   (clock_crossing_bridge_m1_read_data_valid_pio_button_s1),
      .clock_crossing_bridge_m1_requests_pio_button_s1          (clock_crossing_bridge_m1_requests_pio_button_s1),
      .clock_crossing_bridge_m1_write                           (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                       (clock_crossing_bridge_m1_writedata),
      .d1_pio_button_s1_end_xfer                                (d1_pio_button_s1_end_xfer),
      .pio_button_s1_address                                    (pio_button_s1_address),
      .pio_button_s1_chipselect                                 (pio_button_s1_chipselect),
      .pio_button_s1_irq                                        (pio_button_s1_irq),
      .pio_button_s1_irq_from_sa                                (pio_button_s1_irq_from_sa),
      .pio_button_s1_readdata                                   (pio_button_s1_readdata),
      .pio_button_s1_readdata_from_sa                           (pio_button_s1_readdata_from_sa),
      .pio_button_s1_reset_n                                    (pio_button_s1_reset_n),
      .pio_button_s1_write_n                                    (pio_button_s1_write_n),
      .pio_button_s1_writedata                                  (pio_button_s1_writedata),
      .reset_n                                                  (pll_io_reset_n)
    );

  pio_button the_pio_button
    (
      .address    (pio_button_s1_address),
      .chipselect (pio_button_s1_chipselect),
      .clk        (pll_io),
      .in_port    (in_port_to_the_pio_button),
      .irq        (pio_button_s1_irq),
      .readdata   (pio_button_s1_readdata),
      .reset_n    (pio_button_s1_reset_n),
      .write_n    (pio_button_s1_write_n),
      .writedata  (pio_button_s1_writedata)
    );

  pio_led_s1_arbitrator the_pio_led_s1
    (
      .clk                                                   (pll_io),
      .clock_crossing_bridge_m1_address_to_slave             (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_pio_led_s1           (clock_crossing_bridge_m1_granted_pio_led_s1),
      .clock_crossing_bridge_m1_latency_counter              (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_pio_led_s1 (clock_crossing_bridge_m1_qualified_request_pio_led_s1),
      .clock_crossing_bridge_m1_read                         (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_pio_led_s1   (clock_crossing_bridge_m1_read_data_valid_pio_led_s1),
      .clock_crossing_bridge_m1_requests_pio_led_s1          (clock_crossing_bridge_m1_requests_pio_led_s1),
      .clock_crossing_bridge_m1_write                        (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                    (clock_crossing_bridge_m1_writedata),
      .d1_pio_led_s1_end_xfer                                (d1_pio_led_s1_end_xfer),
      .pio_led_s1_address                                    (pio_led_s1_address),
      .pio_led_s1_chipselect                                 (pio_led_s1_chipselect),
      .pio_led_s1_readdata                                   (pio_led_s1_readdata),
      .pio_led_s1_readdata_from_sa                           (pio_led_s1_readdata_from_sa),
      .pio_led_s1_reset_n                                    (pio_led_s1_reset_n),
      .pio_led_s1_write_n                                    (pio_led_s1_write_n),
      .pio_led_s1_writedata                                  (pio_led_s1_writedata),
      .reset_n                                               (pll_io_reset_n)
    );

  pio_led the_pio_led
    (
      .address    (pio_led_s1_address),
      .chipselect (pio_led_s1_chipselect),
      .clk        (pll_io),
      .out_port   (out_port_from_the_pio_led),
      .readdata   (pio_led_s1_readdata),
      .reset_n    (pio_led_s1_reset_n),
      .write_n    (pio_led_s1_write_n),
      .writedata  (pio_led_s1_writedata)
    );

  pll_pll_slave_arbitrator the_pll_pll_slave
    (
      .DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave                (DE4_230_HDMI_TX_SOPC_clock_0_out_address_to_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave           (DE4_230_HDMI_TX_SOPC_clock_0_out_granted_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave (DE4_230_HDMI_TX_SOPC_clock_0_out_qualified_request_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_read                            (DE4_230_HDMI_TX_SOPC_clock_0_out_read),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave   (DE4_230_HDMI_TX_SOPC_clock_0_out_read_data_valid_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave          (DE4_230_HDMI_TX_SOPC_clock_0_out_requests_pll_pll_slave),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_write                           (DE4_230_HDMI_TX_SOPC_clock_0_out_write),
      .DE4_230_HDMI_TX_SOPC_clock_0_out_writedata                       (DE4_230_HDMI_TX_SOPC_clock_0_out_writedata),
      .clk                                                              (clk),
      .d1_pll_pll_slave_end_xfer                                        (d1_pll_pll_slave_end_xfer),
      .pll_pll_slave_address                                            (pll_pll_slave_address),
      .pll_pll_slave_read                                               (pll_pll_slave_read),
      .pll_pll_slave_readdata                                           (pll_pll_slave_readdata),
      .pll_pll_slave_readdata_from_sa                                   (pll_pll_slave_readdata_from_sa),
      .pll_pll_slave_reset                                              (pll_pll_slave_reset),
      .pll_pll_slave_write                                              (pll_pll_slave_write),
      .pll_pll_slave_writedata                                          (pll_pll_slave_writedata),
      .reset_n                                                          (clk_reset_n)
    );

  //pll_cpu out_clk assignment, which is an e_assign
  assign pll_cpu = out_clk_pll_c0;

  //pll_io out_clk assignment, which is an e_assign
  assign pll_io = out_clk_pll_c1;

  pll the_pll
    (
      .address   (pll_pll_slave_address),
      .c0        (out_clk_pll_c0),
      .c1        (out_clk_pll_c1),
      .clk       (clk),
      .locked    (locked_from_the_pll),
      .phasedone (phasedone_from_the_pll),
      .read      (pll_pll_slave_read),
      .readdata  (pll_pll_slave_readdata),
      .reset     (pll_pll_slave_reset),
      .write     (pll_pll_slave_write),
      .writedata (pll_pll_slave_writedata)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                            (pll_io),
      .clock_crossing_bridge_m1_address_to_slave                      (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_sysid_control_slave           (clock_crossing_bridge_m1_granted_sysid_control_slave),
      .clock_crossing_bridge_m1_latency_counter                       (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress                         (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_sysid_control_slave (clock_crossing_bridge_m1_qualified_request_sysid_control_slave),
      .clock_crossing_bridge_m1_read                                  (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_sysid_control_slave   (clock_crossing_bridge_m1_read_data_valid_sysid_control_slave),
      .clock_crossing_bridge_m1_requests_sysid_control_slave          (clock_crossing_bridge_m1_requests_sysid_control_slave),
      .clock_crossing_bridge_m1_write                                 (clock_crossing_bridge_m1_write),
      .d1_sysid_control_slave_end_xfer                                (d1_sysid_control_slave_end_xfer),
      .reset_n                                                        (pll_io_reset_n),
      .sysid_control_slave_address                                    (sysid_control_slave_address),
      .sysid_control_slave_readdata                                   (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                           (sysid_control_slave_readdata_from_sa),
      .sysid_control_slave_reset_n                                    (sysid_control_slave_reset_n)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .clock    (sysid_control_slave_clock),
      .readdata (sysid_control_slave_readdata),
      .reset_n  (sysid_control_slave_reset_n)
    );

  timer_s1_arbitrator the_timer_s1
    (
      .clk                                                 (pll_io),
      .clock_crossing_bridge_m1_address_to_slave           (clock_crossing_bridge_m1_address_to_slave),
      .clock_crossing_bridge_m1_granted_timer_s1           (clock_crossing_bridge_m1_granted_timer_s1),
      .clock_crossing_bridge_m1_latency_counter            (clock_crossing_bridge_m1_latency_counter),
      .clock_crossing_bridge_m1_nativeaddress              (clock_crossing_bridge_m1_nativeaddress),
      .clock_crossing_bridge_m1_qualified_request_timer_s1 (clock_crossing_bridge_m1_qualified_request_timer_s1),
      .clock_crossing_bridge_m1_read                       (clock_crossing_bridge_m1_read),
      .clock_crossing_bridge_m1_read_data_valid_timer_s1   (clock_crossing_bridge_m1_read_data_valid_timer_s1),
      .clock_crossing_bridge_m1_requests_timer_s1          (clock_crossing_bridge_m1_requests_timer_s1),
      .clock_crossing_bridge_m1_write                      (clock_crossing_bridge_m1_write),
      .clock_crossing_bridge_m1_writedata                  (clock_crossing_bridge_m1_writedata),
      .d1_timer_s1_end_xfer                                (d1_timer_s1_end_xfer),
      .reset_n                                             (pll_io_reset_n),
      .timer_s1_address                                    (timer_s1_address),
      .timer_s1_chipselect                                 (timer_s1_chipselect),
      .timer_s1_irq                                        (timer_s1_irq),
      .timer_s1_irq_from_sa                                (timer_s1_irq_from_sa),
      .timer_s1_readdata                                   (timer_s1_readdata),
      .timer_s1_readdata_from_sa                           (timer_s1_readdata_from_sa),
      .timer_s1_reset_n                                    (timer_s1_reset_n),
      .timer_s1_write_n                                    (timer_s1_write_n),
      .timer_s1_writedata                                  (timer_s1_writedata)
    );

  timer the_timer
    (
      .address    (timer_s1_address),
      .chipselect (timer_s1_chipselect),
      .clk        (pll_io),
      .irq        (timer_s1_irq),
      .readdata   (timer_s1_readdata),
      .reset_n    (timer_s1_reset_n),
      .write_n    (timer_s1_write_n),
      .writedata  (timer_s1_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE4_230_HDMI_TX_SOPC_reset_pll_cpu_domain_synch_module DE4_230_HDMI_TX_SOPC_reset_pll_cpu_domain_synch
    (
      .clk      (pll_cpu),
      .data_in  (1'b1),
      .data_out (pll_cpu_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_jtag_debug_module_resetrequest_from_sa |
    cpu_jtag_debug_module_resetrequest_from_sa |
    0 |
    0);

  //reset is asserted asynchronously and deasserted synchronously
  DE4_230_HDMI_TX_SOPC_reset_pll_io_domain_synch_module DE4_230_HDMI_TX_SOPC_reset_pll_io_domain_synch
    (
      .clk      (pll_io),
      .data_in  (1'b1),
      .data_out (pll_io_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset is asserted asynchronously and deasserted synchronously
  DE4_230_HDMI_TX_SOPC_reset_clk_domain_synch_module DE4_230_HDMI_TX_SOPC_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //DE4_230_HDMI_TX_SOPC_clock_0_out_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign DE4_230_HDMI_TX_SOPC_clock_0_out_endofpacket = 0;

  //clock_crossing_bridge_m1_endofpacket of type endofpacket does not connect to anything so wire it to default (0)
  assign clock_crossing_bridge_m1_endofpacket = 0;

  //sysid_control_slave_clock of type clock does not connect to anything so wire it to default (0)
  assign sysid_control_slave_clock = 0;


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/10.0sp1/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/10.0sp1/quartus/eda/sim_lib/220model.v"
`include "c:/altera/10.0sp1/quartus/eda/sim_lib/sgate.v"
`include "pll.v"
`include "ip/TERASIC_I2S/TERASIC_I2S_TX.v"
`include "i2s_tx.v"
`include "pio_button.v"
`include "hdmi_tx_disp_mode.v"
`include "clock_crossing_bridge.v"
`include "hdmi_tx_vpg_color.v"
`include "hdmi_rx1_ep_scl.v"
`include "sysid.v"
`include "hdmi_tx_irq_n.v"
`include "hdmi_rx_irq_n.v"
`include "hdmi_tx_i2c_scl.v"
`include "timer.v"
`include "hdmi_rx0_ep_scl.v"
`include "hdmi_tx_i2c_sda.v"
`include "hdmi_rx_hpd_n.v"
`include "pio_led.v"
`include "hdmi_rx_reset_n.v"
`include "jtag_uart.v"
`include "hdmi_rx_i2c_sda.v"
`include "hdmi_rx_i2c_scl.v"
`include "hdmi_rx_cec.v"
`include "DE4_230_HDMI_TX_SOPC_clock_0.v"
`include "hdmi_rx_edid_wp.v"
`include "hdmi_rx_sync.v"
`include "hdmi_rx0_ep_sda.v"
`include "cpu_test_bench.v"
`include "cpu_mult_cell.v"
`include "cpu_oci_test_bench.v"
`include "cpu_jtag_debug_module_tck.v"
`include "cpu_jtag_debug_module_sysclk.v"
`include "cpu_jtag_debug_module_wrapper.v"
`include "cpu.v"
`include "hdmi_tx_reset_n.v"
`include "hdmi_tx_mode_change.v"
`include "onchip_memory2.v"
`include "hdmi_rx1_ep_sda.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             DE4_230_HDMI_TX_SOPC_clock_0_in_endofpacket_from_sa;
  wire             DE4_230_HDMI_TX_SOPC_clock_0_out_endofpacket;
  wire    [  1: 0] DE4_230_HDMI_TX_SOPC_clock_0_out_nativeaddress;
  wire             bidir_port_to_and_from_the_hdmi_rx0_ep_scl;
  wire             bidir_port_to_and_from_the_hdmi_rx0_ep_sda;
  wire             bidir_port_to_and_from_the_hdmi_rx1_ep_scl;
  wire             bidir_port_to_and_from_the_hdmi_rx1_ep_sda;
  wire    [  1: 0] bidir_port_to_and_from_the_hdmi_rx_cec;
  wire             bidir_port_to_and_from_the_hdmi_rx_i2c_sda;
  wire             bidir_port_to_and_from_the_hdmi_tx_i2c_sda;
  reg              clk;
  wire             clock_crossing_bridge_m1_endofpacket;
  wire             clock_crossing_bridge_s1_endofpacket_from_sa;
  wire             i2s_sck_to_the_i2s_tx;
  wire             i2s_sd_from_the_i2s_tx;
  wire             i2s_ws_from_the_i2s_tx;
  wire             in_port_to_the_hdmi_rx_irq_n;
  wire             in_port_to_the_hdmi_tx_irq_n;
  wire    [  1: 0] in_port_to_the_pio_button;
  wire             jtag_uart_avalon_jtag_slave_dataavailable_from_sa;
  wire             jtag_uart_avalon_jtag_slave_readyfordata_from_sa;
  wire             locked_from_the_pll;
  wire             out_port_from_the_hdmi_rx_edid_wp;
  wire    [  1: 0] out_port_from_the_hdmi_rx_hpd_n;
  wire             out_port_from_the_hdmi_rx_i2c_scl;
  wire             out_port_from_the_hdmi_rx_reset_n;
  wire             out_port_from_the_hdmi_rx_sync;
  wire    [  3: 0] out_port_from_the_hdmi_tx_disp_mode;
  wire             out_port_from_the_hdmi_tx_i2c_scl;
  wire             out_port_from_the_hdmi_tx_mode_change;
  wire             out_port_from_the_hdmi_tx_reset_n;
  wire    [  1: 0] out_port_from_the_hdmi_tx_vpg_color;
  wire    [  3: 0] out_port_from_the_pio_led;
  wire             phasedone_from_the_pll;
  wire             pll_cpu;
  wire             pll_io;
  reg              reset_n;
  wire             sysid_control_slave_clock;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  DE4_230_HDMI_TX_SOPC DUT
    (
      .bidir_port_to_and_from_the_hdmi_rx0_ep_scl (bidir_port_to_and_from_the_hdmi_rx0_ep_scl),
      .bidir_port_to_and_from_the_hdmi_rx0_ep_sda (bidir_port_to_and_from_the_hdmi_rx0_ep_sda),
      .bidir_port_to_and_from_the_hdmi_rx1_ep_scl (bidir_port_to_and_from_the_hdmi_rx1_ep_scl),
      .bidir_port_to_and_from_the_hdmi_rx1_ep_sda (bidir_port_to_and_from_the_hdmi_rx1_ep_sda),
      .bidir_port_to_and_from_the_hdmi_rx_cec     (bidir_port_to_and_from_the_hdmi_rx_cec),
      .bidir_port_to_and_from_the_hdmi_rx_i2c_sda (bidir_port_to_and_from_the_hdmi_rx_i2c_sda),
      .bidir_port_to_and_from_the_hdmi_tx_i2c_sda (bidir_port_to_and_from_the_hdmi_tx_i2c_sda),
      .clk                                        (clk),
      .i2s_sck_to_the_i2s_tx                      (i2s_sck_to_the_i2s_tx),
      .i2s_sd_from_the_i2s_tx                     (i2s_sd_from_the_i2s_tx),
      .i2s_ws_from_the_i2s_tx                     (i2s_ws_from_the_i2s_tx),
      .in_port_to_the_hdmi_rx_irq_n               (in_port_to_the_hdmi_rx_irq_n),
      .in_port_to_the_hdmi_tx_irq_n               (in_port_to_the_hdmi_tx_irq_n),
      .in_port_to_the_pio_button                  (in_port_to_the_pio_button),
      .locked_from_the_pll                        (locked_from_the_pll),
      .out_port_from_the_hdmi_rx_edid_wp          (out_port_from_the_hdmi_rx_edid_wp),
      .out_port_from_the_hdmi_rx_hpd_n            (out_port_from_the_hdmi_rx_hpd_n),
      .out_port_from_the_hdmi_rx_i2c_scl          (out_port_from_the_hdmi_rx_i2c_scl),
      .out_port_from_the_hdmi_rx_reset_n          (out_port_from_the_hdmi_rx_reset_n),
      .out_port_from_the_hdmi_rx_sync             (out_port_from_the_hdmi_rx_sync),
      .out_port_from_the_hdmi_tx_disp_mode        (out_port_from_the_hdmi_tx_disp_mode),
      .out_port_from_the_hdmi_tx_i2c_scl          (out_port_from_the_hdmi_tx_i2c_scl),
      .out_port_from_the_hdmi_tx_mode_change      (out_port_from_the_hdmi_tx_mode_change),
      .out_port_from_the_hdmi_tx_reset_n          (out_port_from_the_hdmi_tx_reset_n),
      .out_port_from_the_hdmi_tx_vpg_color        (out_port_from_the_hdmi_tx_vpg_color),
      .out_port_from_the_pio_led                  (out_port_from_the_pio_led),
      .phasedone_from_the_pll                     (phasedone_from_the_pll),
      .pll_cpu                                    (pll_cpu),
      .pll_io                                     (pll_io),
      .reset_n                                    (reset_n)
    );

  initial
    clk = 1'b0;
  always
    #5 clk <= ~clk;
  
  initial 
    begin
      reset_n <= 0;
      #100 reset_n <= 1;
    end

endmodule


//synthesis translate_on