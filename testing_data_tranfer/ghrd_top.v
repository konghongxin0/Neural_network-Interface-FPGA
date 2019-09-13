// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

`define ENABLE_HPS

//`define AXIPROB
//`define JTAG

module ghrd_top(

      
      ///////// ADC /////////
      inout              ADC_CS_N,
      output             ADC_DIN,
      input              ADC_DOUT,
      output             ADC_SCLK,

      ///////// AUD /////////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK,
      output             AUD_XCK,

      ///////// CLOCK2 /////////
      input              CLOCK2_50,

      ///////// CLOCK3 /////////
      input              CLOCK3_50,

      ///////// CLOCK4 /////////
      input              CLOCK4_50,

      ///////// CLOCK /////////
      input              CLOCK_50,

      ///////// DRAM /////////
      output      [12:0] DRAM_ADDR,
      output      [1:0]  DRAM_BA,
      output             DRAM_CAS_N,
      output             DRAM_CKE,
      output             DRAM_CLK,
      output             DRAM_CS_N,
      inout       [15:0] DRAM_DQ,
      output             DRAM_LDQM,
      output             DRAM_RAS_N,
      output             DRAM_UDQM,
      output             DRAM_WE_N,

      ///////// FAN /////////
      output             FAN_CTRL,

      ///////// FPGA /////////
      output             FPGA_I2C_SCLK,
      inout              FPGA_I2C_SDAT,

      ///////// GPIO /////////
      inout     [35:0]         GPIO_0,
      inout     [35:0]         GPIO_1,
 

      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,

      ///////// HEX2 /////////
      output      [6:0]  HEX2,

      ///////// HEX3 /////////
      output      [6:0]  HEX3,

      ///////// HEX4 /////////
      output      [6:0]  HEX4,

      ///////// HEX5 /////////
      output      [6:0]  HEX5,

`ifdef ENABLE_HPS
      ///////// HPS /////////
      inout              HPS_CONV_USB_N,
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_N,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C1_SCLK,
      inout              HPS_I2C1_SDAT,
      inout              HPS_I2C2_SCLK,
      inout              HPS_I2C2_SDAT,
      inout              HPS_I2C_CONTROL,
      inout              HPS_KEY,
      inout              HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

      ///////// IRDA /////////
      input              IRDA_RXD,
      output             IRDA_TXD,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LEDR /////////
      output  reg    [9:0]  LEDR,

      ///////// PS2 /////////
      inout              PS2_CLK,
      inout              PS2_CLK2,
      inout              PS2_DAT,
      inout              PS2_DAT2,

      ///////// SW /////////
      input       [9:0]  SW,

      ///////// TD /////////
      input              TD_CLK27,
      input      [7:0]  TD_DATA,
      input             TD_HS,
      output             TD_RESET_N,
      input             TD_VS,


      ///////// VGA /////////
      output      [7:0]  VGA_B,
      output             VGA_BLANK_N,
      output             VGA_CLK,
      output      [7:0]  VGA_G,
      output             VGA_HS,
      output      [7:0]  VGA_R,
      output             VGA_SYNC_N,
      output             VGA_VS
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
  wire  hps_fpga_reset_n;
  wire [3:0] fpga_debounced_buttons;
  wire [8:0]  fpga_led_internal;
  wire [2:0]  hps_reset_req;
  wire        hps_cold_reset;
  wire        hps_warm_reset;
  wire        hps_debug_reset;
  wire [27:0] stm_hw_events;
  wire        fpga_clk_50;
// connection of internal logics
//  assign LEDR[9:1] = fpga_led_internal;
  assign stm_hw_events    = {{4{1'b0}}, SW, fpga_led_internal, fpga_debounced_buttons};
  assign fpga_clk_50=CLOCK_50;
//=======================================================
//  Structural coding
//=======================================================

wire[103:0] usr_data;
/*
reg[31:0] axi_addr;
wire axi_req;
reg[3:0] axi_ben;
reg axi_read,axi_write;
wire[31:0] axi_rdata;
wire axi_rvalid;
reg[31:0] axi_wdata;
*/

wire[31:0] axi_addr;
wire axi_req;
wire[3:0] axi_ben;
wire axi_read,axi_write;
wire[31:0] axi_rdata;
wire axi_rvalid;
wire[31:0] axi_wdata;

`ifdef AXIPROB
wire    [1:0] debug_axi_slave_awburst;
wire    [4:0] debug_axi_slave_awuser;
wire    [3:0] debug_axi_slave_arlen;
wire    [7:0] debug_axi_slave_wstrb;
wire          debug_axi_slave_wready;
wire    [7:0] debug_axi_slave_rid;
wire          debug_axi_slave_rready;
wire    [3:0] debug_axi_slave_awlen;
wire    [7:0] debug_axi_slave_wid;
wire    [3:0] debug_axi_slave_arcache;
wire          debug_axi_slave_wvalid;
wire   [31:0] debug_axi_slave_araddr;
wire    [2:0] debug_axi_slave_arprot;
wire    [2:0] debug_axi_slave_awprot;
wire   [63:0] debug_axi_slave_wdata;
wire          debug_axi_slave_arvalid;
wire    [3:0] debug_axi_slave_awcache;
wire    [7:0] debug_axi_slave_arid;
wire    [1:0] debug_axi_slave_arlock;
wire    [1:0] debug_axi_slave_awlock;
wire   [31:0] debug_axi_slave_awaddr;
wire    [1:0] debug_axi_slave_bresp;
wire          debug_axi_slave_arready;
wire   [63:0] debug_axi_slave_rdata;
wire          debug_axi_slave_awready;
wire    [1:0] debug_axi_slave_arburst;
wire    [2:0] debug_axi_slave_arsize;
wire          debug_axi_slave_bready;
wire          debug_axi_slave_rlast;
wire          debug_axi_slave_wlast;
wire    [1:0] debug_axi_slave_rresp;
wire    [7:0] debug_axi_slave_awid;
wire    [7:0] debug_axi_slave_bid;
wire          debug_axi_slave_bvalid;
wire    [2:0] debug_axi_slave_awsize;
wire          debug_axi_slave_awvalid;
wire    [4:0] debug_axi_slave_aruser;
wire          debug_axi_slave_rvalid;

reg    [1:0] prob_axi_slave_awburst/*synthesis noprune*/;
reg    [4:0] prob_axi_slave_awuser/*synthesis noprune*/;
reg    [3:0] prob_axi_slave_arlen/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_wstrb/*synthesis noprune*/;
reg          prob_axi_slave_wready/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_rid/*synthesis noprune*/;
reg          prob_axi_slave_rready/*synthesis noprune*/;
reg    [3:0] prob_axi_slave_awlen/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_wid/*synthesis noprune*/;
reg    [3:0] prob_axi_slave_arcache/*synthesis noprune*/;
reg          prob_axi_slave_wvalid/*synthesis noprune*/;
reg   [31:0] prob_axi_slave_araddr/*synthesis noprune*/;
reg    [2:0] prob_axi_slave_arprot/*synthesis noprune*/;
reg    [2:0] prob_axi_slave_awprot/*synthesis noprune*/;
reg   [63:0] prob_axi_slave_wdata/*synthesis noprune*/;
reg          prob_axi_slave_arvalid/*synthesis noprune*/;
reg    [3:0] prob_axi_slave_awcache/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_arid/*synthesis noprune*/;
reg    [1:0] prob_axi_slave_arlock/*synthesis noprune*/;
reg    [1:0] prob_axi_slave_awlock/*synthesis noprune*/;
reg   [31:0] prob_axi_slave_awaddr/*synthesis noprune*/;
reg    [1:0] prob_axi_slave_bresp/*synthesis noprune*/;
reg          prob_axi_slave_arready/*synthesis noprune*/;
reg   [63:0] prob_axi_slave_rdata/*synthesis noprune*/;
reg          prob_axi_slave_awready/*synthesis noprune*/;
reg    [1:0] prob_axi_slave_arburst/*synthesis noprune*/;
reg    [2:0] prob_axi_slave_arsize/*synthesis noprune*/;
reg          prob_axi_slave_bready/*synthesis noprune*/;
reg          prob_axi_slave_rlast/*synthesis noprune*/;
reg          prob_axi_slave_wlast/*synthesis noprune*/;
reg    [1:0] prob_axi_slave_rresp/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_awid/*synthesis noprune*/;
reg    [7:0] prob_axi_slave_bid/*synthesis noprune*/;
reg          prob_axi_slave_bvalid/*synthesis noprune*/;
reg    [2:0] prob_axi_slave_awsize/*synthesis noprune*/;
reg          prob_axi_slave_awvalid/*synthesis noprune*/;
reg    [4:0] prob_axi_slave_aruser/*synthesis noprune*/;
reg          prob_axi_slave_rvalid/*synthesis noprune*/;

reg[15:0] count_axi;

always@(posedge CLOCK_50)begin
	prob_axi_slave_awburst<=debug_axi_slave_awburst;
	prob_axi_slave_awuser<=debug_axi_slave_awuser;
	prob_axi_slave_arlen<=debug_axi_slave_arlen;
	prob_axi_slave_wstrb<=debug_axi_slave_wstrb;
	prob_axi_slave_wready<=debug_axi_slave_wready;
	prob_axi_slave_rid<=debug_axi_slave_rid;
	prob_axi_slave_rready<=debug_axi_slave_rready;
	prob_axi_slave_awlen<=debug_axi_slave_awlen;
	prob_axi_slave_wid<=debug_axi_slave_wid;
	prob_axi_slave_arcache<=debug_axi_slave_arcache;
	prob_axi_slave_wvalid<=debug_axi_slave_wvalid;
	prob_axi_slave_araddr<=debug_axi_slave_araddr;
	prob_axi_slave_arprot<=debug_axi_slave_arprot;
	prob_axi_slave_awprot<=debug_axi_slave_awprot;
	prob_axi_slave_wdata<=debug_axi_slave_wdata;
	prob_axi_slave_arvalid<=debug_axi_slave_arvalid;
	prob_axi_slave_awcache<=debug_axi_slave_awcache;
	prob_axi_slave_arid<=debug_axi_slave_arid;
	prob_axi_slave_arlock<=debug_axi_slave_arlock;
	prob_axi_slave_awlock<=debug_axi_slave_awlock;
	prob_axi_slave_awaddr<=debug_axi_slave_awaddr;
	prob_axi_slave_bresp<=debug_axi_slave_bresp;
	prob_axi_slave_arready<=debug_axi_slave_arready;
	prob_axi_slave_rdata<=debug_axi_slave_rdata;
	prob_axi_slave_awready<=debug_axi_slave_awready;
	prob_axi_slave_arburst<=debug_axi_slave_arburst;
	prob_axi_slave_arsize<=debug_axi_slave_arsize;
	prob_axi_slave_bready<=debug_axi_slave_bready;
	prob_axi_slave_rlast<=debug_axi_slave_rlast;
	prob_axi_slave_wlast<=debug_axi_slave_wlast;
	prob_axi_slave_rresp<=debug_axi_slave_rresp;
	prob_axi_slave_awid<=debug_axi_slave_awid;
	prob_axi_slave_bid<=debug_axi_slave_bid;
	prob_axi_slave_bvalid<=debug_axi_slave_bvalid;
	prob_axi_slave_awsize<=debug_axi_slave_awsize;
	prob_axi_slave_awvalid<=debug_axi_slave_awvalid;
	prob_axi_slave_aruser<=debug_axi_slave_aruser;
	prob_axi_slave_rvalid<=debug_axi_slave_rvalid;
	LEDR[0]<=prob_axi_slave_awburst[count_axi]|prob_axi_slave_awuser[count_axi]|prob_axi_slave_arlen[count_axi]|prob_axi_slave_wstrb[count_axi]|prob_axi_slave_wready|prob_axi_slave_rid[count_axi]|prob_axi_slave_rready|prob_axi_slave_awlen[count_axi]|prob_axi_slave_wid[count_axi]|prob_axi_slave_arcache[count_axi]|prob_axi_slave_wvalid|prob_axi_slave_araddr[count_axi]|prob_axi_slave_arprot[count_axi]|prob_axi_slave_awprot[count_axi]|prob_axi_slave_wdata[count_axi]|prob_axi_slave_arvalid|prob_axi_slave_awcache[count_axi]|prob_axi_slave_arid[count_axi]|prob_axi_slave_arlock[count_axi]|prob_axi_slave_awlock[count_axi]|prob_axi_slave_awaddr[count_axi]|prob_axi_slave_bresp[count_axi]|prob_axi_slave_arready|prob_axi_slave_rdata[count_axi]|prob_axi_slave_awready|prob_axi_slave_arburst[count_axi]|prob_axi_slave_arsize[count_axi]|prob_axi_slave_bready|prob_axi_slave_rlast|prob_axi_slave_wlast|prob_axi_slave_rresp[count_axi]|prob_axi_slave_awid[count_axi]|prob_axi_slave_bid[count_axi]|prob_axi_slave_bvalid|prob_axi_slave_awsize[count_axi]|prob_axi_slave_awvalid|prob_axi_slave_aruser[count_axi]|prob_axi_slave_rvalid;
	if (count_axi<127)begin
		count_axi<=count_axi+1;
	end
	else begin
		count_axi<=0;
	end
end

`endif

soc_system u0 (   
		  .usr_data   (usr_data),

`ifdef AXIPROB
		  .debug_axi_slave_awburst(debug_axi_slave_awburst),
			.debug_axi_slave_awuser(debug_axi_slave_awuser),
			.debug_axi_slave_arlen(debug_axi_slave_arlen),
			.debug_axi_slave_wstrb(debug_axi_slave_wstrb),
			.debug_axi_slave_wready(debug_axi_slave_wready),
			.debug_axi_slave_rid(debug_axi_slave_rid),
			.debug_axi_slave_rready(debug_axi_slave_rready),
			.debug_axi_slave_awlen(debug_axi_slave_awlen),
			.debug_axi_slave_wid(debug_axi_slave_wid),
			.debug_axi_slave_arcache(debug_axi_slave_arcache),
			.debug_axi_slave_wvalid(debug_axi_slave_wvalid),
			.debug_axi_slave_araddr(debug_axi_slave_araddr),
			.debug_axi_slave_arprot(debug_axi_slave_arprot),
			.debug_axi_slave_awprot(debug_axi_slave_awprot),
			.debug_axi_slave_wdata(debug_axi_slave_wdata),
			.debug_axi_slave_arvalid(debug_axi_slave_arvalid),
			.debug_axi_slave_awcache(debug_axi_slave_awcache),
			.debug_axi_slave_arid(debug_axi_slave_arid),
			.debug_axi_slave_arlock(debug_axi_slave_arlock),
			.debug_axi_slave_awlock(debug_axi_slave_awlock),
			.debug_axi_slave_awaddr(debug_axi_slave_awaddr),
			.debug_axi_slave_bresp(debug_axi_slave_bresp),
			.debug_axi_slave_arready(debug_axi_slave_arready),
			.debug_axi_slave_rdata(debug_axi_slave_rdata),
			.debug_axi_slave_awready(debug_axi_slave_awready),
			.debug_axi_slave_arburst(debug_axi_slave_arburst),
			.debug_axi_slave_arsize(debug_axi_slave_arsize),
			.debug_axi_slave_bready(debug_axi_slave_bready),
			.debug_axi_slave_rlast(debug_axi_slave_rlast),
			.debug_axi_slave_wlast(debug_axi_slave_wlast),
			.debug_axi_slave_rresp(debug_axi_slave_rresp),
			.debug_axi_slave_awid(debug_axi_slave_awid),
			.debug_axi_slave_bid(debug_axi_slave_bid),
			.debug_axi_slave_bvalid(debug_axi_slave_bvalid),
			.debug_axi_slave_awsize(debug_axi_slave_awsize),
			.debug_axi_slave_awvalid(debug_axi_slave_awvalid),
			.debug_axi_slave_aruser(debug_axi_slave_aruser),
			.debug_axi_slave_rvalid(debug_axi_slave_rvalid),
`endif	  
`ifndef JTAG		  
		  .master_secure_master_address(axi_addr),    //[31:0]
		  .master_secure_master_waitrequest(axi_req),          
		  .master_secure_master_byteenable(axi_ben),   //[3:0]   
		  .master_secure_master_read(axi_read),            
		  .master_secure_master_readdata(axi_rdata),  //[31:0]
		  .master_secure_master_readdatavalid(axi_rvalid), 
		  .master_secure_master_write(axi_write),       
		  .master_secure_master_writedata(axi_wdata), //[31:0]
`endif		  
		  .clk_clk                               (CLOCK_50),                             //                clk.clk
		  .reset_reset_n                         (1'b1),                                 //                reset.reset_n
		  //HPS ddr3
		  .memory_mem_a                          ( HPS_DDR3_ADDR),                       //                memory.mem_a
        .memory_mem_ba                         ( HPS_DDR3_BA),                         //                .mem_ba
        .memory_mem_ck                         ( HPS_DDR3_CK_P),                       //                .mem_ck
        .memory_mem_ck_n                       ( HPS_DDR3_CK_N),                       //                .mem_ck_n
        .memory_mem_cke                        ( HPS_DDR3_CKE),                        //                .mem_cke
        .memory_mem_cs_n                       ( HPS_DDR3_CS_N),                       //                .mem_cs_n
        .memory_mem_ras_n                      ( HPS_DDR3_RAS_N),                      //                .mem_ras_n
        .memory_mem_cas_n                      ( HPS_DDR3_CAS_N),                      //                .mem_cas_n
        .memory_mem_we_n                       ( HPS_DDR3_WE_N),                       //                .mem_we_n
        .memory_mem_reset_n                    ( HPS_DDR3_RESET_N),                    //                .mem_reset_n
        .memory_mem_dq                         ( HPS_DDR3_DQ),                         //                .mem_dq
        .memory_mem_dqs                        ( HPS_DDR3_DQS_P),                      //                .mem_dqs
        .memory_mem_dqs_n                      ( HPS_DDR3_DQS_N),                      //                .mem_dqs_n
        .memory_mem_odt                        ( HPS_DDR3_ODT),                        //                .mem_odt
        .memory_mem_dm                         ( HPS_DDR3_DM),                         //                .mem_dm
        .memory_oct_rzqin                      ( HPS_DDR3_RZQ),                        //                .oct_rzqin
       //HPS ethernet		
	     .hps_0_hps_io_hps_io_emac1_inst_TX_CLK ( HPS_ENET_GTX_CLK),       //                             hps_0_hps_io.hps_io_emac1_inst_TX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_TXD0   ( HPS_ENET_TX_DATA[0] ),   //                             .hps_io_emac1_inst_TXD0
        .hps_0_hps_io_hps_io_emac1_inst_TXD1   ( HPS_ENET_TX_DATA[1] ),   //                             .hps_io_emac1_inst_TXD1
        .hps_0_hps_io_hps_io_emac1_inst_TXD2   ( HPS_ENET_TX_DATA[2] ),   //                             .hps_io_emac1_inst_TXD2
        .hps_0_hps_io_hps_io_emac1_inst_TXD3   ( HPS_ENET_TX_DATA[3] ),   //                             .hps_io_emac1_inst_TXD3
        .hps_0_hps_io_hps_io_emac1_inst_RXD0   ( HPS_ENET_RX_DATA[0] ),   //                             .hps_io_emac1_inst_RXD0
        .hps_0_hps_io_hps_io_emac1_inst_MDIO   ( HPS_ENET_MDIO ),         //                             .hps_io_emac1_inst_MDIO
        .hps_0_hps_io_hps_io_emac1_inst_MDC    ( HPS_ENET_MDC  ),         //                             .hps_io_emac1_inst_MDC
        .hps_0_hps_io_hps_io_emac1_inst_RX_CTL ( HPS_ENET_RX_DV),         //                             .hps_io_emac1_inst_RX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_TX_CTL ( HPS_ENET_TX_EN),         //                             .hps_io_emac1_inst_TX_CTL
        .hps_0_hps_io_hps_io_emac1_inst_RX_CLK ( HPS_ENET_RX_CLK),        //                             .hps_io_emac1_inst_RX_CLK
        .hps_0_hps_io_hps_io_emac1_inst_RXD1   ( HPS_ENET_RX_DATA[1] ),   //                             .hps_io_emac1_inst_RXD1
        .hps_0_hps_io_hps_io_emac1_inst_RXD2   ( HPS_ENET_RX_DATA[2] ),   //                             .hps_io_emac1_inst_RXD2
        .hps_0_hps_io_hps_io_emac1_inst_RXD3   ( HPS_ENET_RX_DATA[3] ),   //                             .hps_io_emac1_inst_RXD3
       //HPS QSPI  
		  .hps_0_hps_io_hps_io_qspi_inst_IO0     ( HPS_FLASH_DATA[0]    ),     //                               .hps_io_qspi_inst_IO0
        .hps_0_hps_io_hps_io_qspi_inst_IO1     ( HPS_FLASH_DATA[1]    ),     //                               .hps_io_qspi_inst_IO1
        .hps_0_hps_io_hps_io_qspi_inst_IO2     ( HPS_FLASH_DATA[2]    ),     //                               .hps_io_qspi_inst_IO2
        .hps_0_hps_io_hps_io_qspi_inst_IO3     ( HPS_FLASH_DATA[3]    ),     //                               .hps_io_qspi_inst_IO3
        .hps_0_hps_io_hps_io_qspi_inst_SS0     ( HPS_FLASH_NCSO    ),        //                               .hps_io_qspi_inst_SS0
        .hps_0_hps_io_hps_io_qspi_inst_CLK     ( HPS_FLASH_DCLK    ),        //                               .hps_io_qspi_inst_CLK
       //HPS SD card 
		  .hps_0_hps_io_hps_io_sdio_inst_CMD     ( HPS_SD_CMD    ),           //                               .hps_io_sdio_inst_CMD
        .hps_0_hps_io_hps_io_sdio_inst_D0      ( HPS_SD_DATA[0]     ),      //                               .hps_io_sdio_inst_D0
        .hps_0_hps_io_hps_io_sdio_inst_D1      ( HPS_SD_DATA[1]     ),      //                               .hps_io_sdio_inst_D1
        .hps_0_hps_io_hps_io_sdio_inst_CLK     ( HPS_SD_CLK   ),            //                               .hps_io_sdio_inst_CLK
        .hps_0_hps_io_hps_io_sdio_inst_D2      ( HPS_SD_DATA[2]     ),      //                               .hps_io_sdio_inst_D2
        .hps_0_hps_io_hps_io_sdio_inst_D3      ( HPS_SD_DATA[3]     ),      //                               .hps_io_sdio_inst_D3
       //HPS USB 		  
		  .hps_0_hps_io_hps_io_usb1_inst_D0      ( HPS_USB_DATA[0]    ),      //                               .hps_io_usb1_inst_D0
        .hps_0_hps_io_hps_io_usb1_inst_D1      ( HPS_USB_DATA[1]    ),      //                               .hps_io_usb1_inst_D1
        .hps_0_hps_io_hps_io_usb1_inst_D2      ( HPS_USB_DATA[2]    ),      //                               .hps_io_usb1_inst_D2
        .hps_0_hps_io_hps_io_usb1_inst_D3      ( HPS_USB_DATA[3]    ),      //                               .hps_io_usb1_inst_D3
        .hps_0_hps_io_hps_io_usb1_inst_D4      ( HPS_USB_DATA[4]    ),      //                               .hps_io_usb1_inst_D4
        .hps_0_hps_io_hps_io_usb1_inst_D5      ( HPS_USB_DATA[5]    ),      //                               .hps_io_usb1_inst_D5
        .hps_0_hps_io_hps_io_usb1_inst_D6      ( HPS_USB_DATA[6]    ),      //                               .hps_io_usb1_inst_D6
        .hps_0_hps_io_hps_io_usb1_inst_D7      ( HPS_USB_DATA[7]    ),      //                               .hps_io_usb1_inst_D7
        .hps_0_hps_io_hps_io_usb1_inst_CLK     ( HPS_USB_CLKOUT    ),       //                               .hps_io_usb1_inst_CLK
        .hps_0_hps_io_hps_io_usb1_inst_STP     ( HPS_USB_STP    ),          //                               .hps_io_usb1_inst_STP
        .hps_0_hps_io_hps_io_usb1_inst_DIR     ( HPS_USB_DIR    ),          //                               .hps_io_usb1_inst_DIR
        .hps_0_hps_io_hps_io_usb1_inst_NXT     ( HPS_USB_NXT    ),          //                               .hps_io_usb1_inst_NXT
       //HPS SPI 		  
		  .hps_0_hps_io_hps_io_spim1_inst_CLK    ( HPS_SPIM_CLK  ),           //                               .hps_io_spim1_inst_CLK
        .hps_0_hps_io_hps_io_spim1_inst_MOSI   ( HPS_SPIM_MOSI ),           //                               .hps_io_spim1_inst_MOSI
        .hps_0_hps_io_hps_io_spim1_inst_MISO   ( HPS_SPIM_MISO ),           //                               .hps_io_spim1_inst_MISO
        .hps_0_hps_io_hps_io_spim1_inst_SS0    ( HPS_SPIM_SS ),             //                               .hps_io_spim1_inst_SS0
      //HPS UART		
		  .hps_0_hps_io_hps_io_uart0_inst_RX     ( HPS_UART_RX    ),          //                               .hps_io_uart0_inst_RX
        .hps_0_hps_io_hps_io_uart0_inst_TX     ( HPS_UART_TX    ),          //                               .hps_io_uart0_inst_TX
		//HPS I2C1
		  .hps_0_hps_io_hps_io_i2c0_inst_SDA     ( HPS_I2C1_SDAT    ),        //                               .hps_io_i2c0_inst_SDA
        .hps_0_hps_io_hps_io_i2c0_inst_SCL     ( HPS_I2C1_SCLK    ),        //                               .hps_io_i2c0_inst_SCL
		//HPS I2C2
		  .hps_0_hps_io_hps_io_i2c1_inst_SDA     ( HPS_I2C2_SDAT    ),        //                               .hps_io_i2c1_inst_SDA
        .hps_0_hps_io_hps_io_i2c1_inst_SCL     ( HPS_I2C2_SCLK    ),        //                               .hps_io_i2c1_inst_SCL
      //HPS GPIO  
		  .hps_0_hps_io_hps_io_gpio_inst_GPIO09  ( HPS_CONV_USB_N),           //                               .hps_io_gpio_inst_GPIO09
        .hps_0_hps_io_hps_io_gpio_inst_GPIO35  ( HPS_ENET_INT_N),           //                               .hps_io_gpio_inst_GPIO35
        .hps_0_hps_io_hps_io_gpio_inst_GPIO40  ( HPS_LTC_GPIO),              //                               .hps_io_gpio_inst_GPIO40
        //.hps_0_hps_io_hps_io_gpio_inst_GPIO41  ( HPS_GPIO[1]),              //                               .hps_io_gpio_inst_GPIO41
        .hps_0_hps_io_hps_io_gpio_inst_GPIO48  ( HPS_I2C_CONTROL),          //                               .hps_io_gpio_inst_GPIO48
        .hps_0_hps_io_hps_io_gpio_inst_GPIO53  ( HPS_LED),                  //                               .hps_io_gpio_inst_GPIO53
        .hps_0_hps_io_hps_io_gpio_inst_GPIO54  ( HPS_KEY),                  //                               .hps_io_gpio_inst_GPIO54
        .hps_0_hps_io_hps_io_gpio_inst_GPIO61  ( HPS_GSENSOR_INT),          //                               .hps_io_gpio_inst_GPIO61
				//HPS reset output 
	  .led_pio_external_connection_export    ( fpga_led_internal 	),    //    led_pio_external_connection.export
	  .dipsw_pio_external_connection_export  ( SW	),  //  dipsw_pio_external_connection.export
	  .button_pio_external_connection_export ( fpga_debounced_buttons	), // button_pio_external_connection.export
	  .hps_0_h2f_reset_reset_n               ( hps_fpga_reset_n ),                //                hps_0_h2f_reset.reset_n
	  .hps_0_f2h_cold_reset_req_reset_n      (~hps_cold_reset ),      //       hps_0_f2h_cold_reset_req.reset_n
     .hps_0_f2h_debug_reset_req_reset_n     (~hps_debug_reset ),     //      hps_0_f2h_debug_reset_req.reset_n
     .hps_0_f2h_stm_hw_events_stm_hwevents  (stm_hw_events ),  //        hps_0_f2h_stm_hw_events.stm_hwevents
     .hps_0_f2h_warm_reset_req_reset_n      (~hps_warm_reset ),      //       hps_0_f2h_warm_reset_req.reset_n

    );

wire[31:0] axi_base;

assign axi_base=SW[9]?32'h0e800000:32'h2a800000;

reg[127:0] debug;
reg[103:0] temp;
reg[7:0] count;
always@(posedge CLOCK_50)begin
	//temp<=uaddr|(urdata<<32)|(ustart<<64)|(ufinished<<65);//usr_data;
	//debug<=(axi_req<<99)|(axi_rvalid<<98)|(axi_read<<97)|(axi_write<<96)|(axi_rdata<<32)|axi_wdata;
	//debug<=uaddr|(urdata<<32)|(ufinished<<64)|(uerror<<65);
	//debug<=rlayer|(rn<<8)|(rin<<16)|(ram_in<<32)|(ram_w<<64)|(state<<96)|(rmode<<104)|(rs<<105)|(rf<<106);
	temp<=rlayer|(rn<<8)|(rin<<16);
	debug<=cresult|(cfinished<<8)|(cdebug<<16)|(cdebug1<<64);
	LEDR[9]<=temp[count];
	LEDR[8]<=debug[count];
	if(count<128)begin
		count<=count+1;
	end
	else begin
		count<=0;
	end
end


wire urst;
//reg[31:0] uaddr,uwdata;
wire[31:0] uaddr,uwdata;
wire[31:0] urdata;
//reg urw,ustart;
wire urw,ustart;
wire ufinished,uerror;
axi_connect ac0(CLOCK_50,urst,uaddr,uwdata,urdata,urw,ustart,ufinished,uerror,axi_addr,axi_req,axi_ben,axi_read,axi_write,axi_rdata,axi_rvalid,axi_wdata);
/*
reg[7:0] rlayer;//the layer to be read
reg[7:0] rn;//the neuron to be read
reg[7:0] rin;//the input of a neuron
reg rmode;//0: read input, 1: read weight/bias
reg rs;//start
*/
wire[7:0] rlayer;//the layer to be read
wire[7:0] rn;//the neuron to be read
wire[7:0] rin;//the input of a neuron
wire rmode;//0: read input, 1: read weight/bias
wire rs;//start
wire[32-1:0] ram_in;
wire[8-1:0] ram_w;
wire rf;//finished

read_wbin #(.maxl(5),.sizein(32),.sizew(32)) rw0(CLOCK_50,urst,'h0a1e20,uaddr,uwdata,urdata,urw,ustart,ufinished,uerror,rlayer,rn,rin,rmode,rs,ram_in,ram_w,rf);


reg cstart;
wire[7:0] cresult;
wire[7:0] cfinished;
wire[31:0] cdebug,cdebug1;
connect #(.maxl(5),.sizein(32),.sizew(32),.sizeout(40)) cnt0(CLOCK_50,urst,cstart,rlayer,rn,rin,rmode,rs,ram_in,ram_w,rf,cresult,cfinished,cdebug,cdebug1);


assign urst=~KEY[0];

reg[7:0] state;

always@(posedge CLOCK_50)begin
	LEDR[0]<=urst;
	if(urst)begin
		cstart<=0;
		state<=0;
	end
	else begin
		case(state)
		0:begin
			cstart<=1;
			state<=1;
		end
		1:begin
			cstart<=0;
			state<=2;
		end
		2:begin
			
		end
		3:begin
		end
		endcase
	end
end

/*
always@(posedge CLOCK_50)begin
	LEDR[0]<=urst;
	if(urst)begin
		rlayer<=1;
		rn<=0;
		rin<=0;
		rmode<=0;
		rs<=0;
		state<=0;
	end
	else begin
		case(state)
		0:begin
			rmode<=~rmode;
			if(rlayer==2)begin
				rlayer<=1;
			end
			else begin
				rlayer<=2;
			end
			if(rn<2)begin
				rn<=rn+1;
			end
			else begin
				rn<=0;
			end
			if(rin<3)begin
				rin<=rin+1;
			end
			else begin
				rin<=0;
			end
			rs<=1;
			state<=1;
		end
		1:begin
			rs<=0;
			state<=2;
		end
		2:begin
			if(rf)begin
				state<=0;
			end
		end
		3:begin
		end
		endcase
	end
end
*/
/*
always@(posedge CLOCK_50)begin
	LEDR[0]<=urst;
	if(urst)begin
		uaddr<=axi_base;
		uwdata<=0;
		urw<=0;
		ustart<=0;
		state<=0;
	end
	else begin
		case(state)
		0:begin
			ustart<=1;
			uaddr<=uaddr;
			urw<=0;
			state<=1;
		end
		1:begin
			ustart<=0;
			if(uerror)begin
				state<=0;
			end
			if(ufinished)begin
				if(uaddr<axi_base+100)
				uaddr<=uaddr+1;
				else
				uaddr<=axi_base;
				state<=0;
			end
		end
		2:begin
		end
		3:begin
		end
		endcase
	end
end
*/

// Debounce logic to clean out glitches within 1ms
debounce debounce_inst (
  .clk                                  (fpga_clk_50),
  .reset_n                              (hps_fpga_reset_n),  
  .data_in                              (KEY),
  .data_out                             (fpga_debounced_buttons)
);
  defparam debounce_inst.WIDTH = 4;
  defparam debounce_inst.POLARITY = "LOW";
  defparam debounce_inst.TIMEOUT = 50000;               // at 50Mhz this is a debounce time of 1ms
  defparam debounce_inst.TIMEOUT_WIDTH = 16;            // ceil(log2(TIMEOUT))
  
// Source/Probe megawizard instance
hps_reset hps_reset_inst (
  .source_clk (fpga_clk_50),
  .source     (hps_reset_req)
);

altera_edge_detector pulse_cold_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[0]),
  .pulse_out (hps_cold_reset)
);
  defparam pulse_cold_reset.PULSE_EXT = 6;
  defparam pulse_cold_reset.EDGE_TYPE = 1;
  defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_warm_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[1]),
  .pulse_out (hps_warm_reset)
);
  defparam pulse_warm_reset.PULSE_EXT = 2;
  defparam pulse_warm_reset.EDGE_TYPE = 1;
  defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;
  
altera_edge_detector pulse_debug_reset (
  .clk       (fpga_clk_50),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[2]),
  .pulse_out (hps_debug_reset)
);
  defparam pulse_debug_reset.PULSE_EXT = 32;
  defparam pulse_debug_reset.EDGE_TYPE = 1;
  defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;
  
reg [25:0] counter; 
reg  led_level;
always @(posedge fpga_clk_50 or negedge hps_fpga_reset_n)
begin
if(~hps_fpga_reset_n)
begin
                counter<=0;
                led_level<=0;
end

else if(counter==24999999)
        begin
                counter<=0;
                led_level<=~led_level;
        end
else
                counter<=counter+1'b1;
end

//assign LEDR[0]=led_level;

endmodule

module flow7seg(clk_s,num,out0,out1,out2,out3,out4,out5);
input clk_s;
input [31:0] num;
output [6:0] out0;
output [6:0] out1;
output [6:0] out2;
output [6:0] out3;
output [6:0] out4;
output [6:0] out5;

reg[7:0] pos;

reg[23:0] num_dis;

dis7seg d0(num_dis,out0,out1,out2,out3,out4,out5);

always@(posedge clk_s)begin
	num_dis<=num>>(pos*8);
	if(pos<3)begin
		pos<=pos+1;
	end
	else begin
		pos<=0;
	end
end

endmodule

module dis7seg(num,out0,out1,out2,out3,out4,out5);
input [23:0] num;
output [6:0] out0;
output [6:0] out1;
output [6:0] out2;
output [6:0] out3;
output [6:0] out4;
output [6:0] out5;

wire [6:0] code[15:0];
assign code[0]=7'b1000000;
assign code[1]=7'b1111001;
assign code[2]=7'b0100100;
assign code[3]=7'b0110000;
assign code[4]=7'b0011001;
assign code[5]=7'b0010010;
assign code[6]=7'b0000010;
assign code[7]=7'b1111000;
assign code[8]=7'b0000000;
assign code[9]=7'b0010000;
assign code[10]=7'b0001000;
assign code[11]=7'b0000011;
assign code[12]=7'b1000110;
assign code[13]=7'b0100001;
assign code[14]=7'b0000110;
assign code[15]=7'b0001110;

assign out0=code[num&4'b1111];
assign out1=code[(num>>4)&4'b1111];
assign out2=code[(num>>8)&4'b1111];
assign out3=code[(num>>12)&4'b1111];
assign out4=code[(num>>16)&4'b1111];
assign out5=code[(num>>20)&4'b1111];

endmodule
 
module lclk(clkin,times,clkout);
	input clkin;
	input[32:1] times;
	output clkout;
	reg clkout;
	reg [32:1] conter;
	always @(posedge clkin)begin
	if(conter==times)begin
	clkout=1;
	conter=0;
	end
	else
	clkout=0;
	conter=conter+1;
	end
endmodule

module axi_connect(
input clk,
input rst,
input[31:0] addr,
input[31:0] wdata,
output reg[31:0] rdata,
input rw,
input start,
output reg finished,
output reg error,

output reg[31:0] axi_addr,
input axi_req,
output reg[3:0] axi_ben,
output reg axi_read,
output reg axi_write,
input[31:0] axi_rdata,
input axi_rvalid,
output reg[31:0] axi_wdata
);

parameter IDLE=8'h0;
parameter READ=8'h1;
parameter READW1=8'h2;
parameter READW2=8'h3;
parameter WRITE=8'h4;
parameter WRITEW1=8'h5;
parameter WRITEW2=8'h6;
parameter LOOP=8'h7;
reg[7:0] state;
reg[7:0] delay;

always@(posedge clk)begin
	if(rst)begin
		finished<=0;
		error<=0;
		axi_addr<=0;
		axi_wdata<=0;
		axi_ben<=0;
		axi_write<=0;
		axi_read<=0;
		state<=READ;
	end
	else begin
		case(state)
		IDLE:begin
			if(start)begin
				finished<=0;
				error<=0;
				axi_addr<=0;
				axi_wdata<=0;
				axi_ben<=0;
				axi_write<=0;
				axi_read<=0;
				rdata<=0;
				if(rw)begin
					state<=WRITE;
				end
				else begin
					state<=READ;
				end
			end
			else begin
				state<=IDLE;
			end
		end
		READ:begin
			axi_ben<=4'hf;
			axi_addr<=addr;
			axi_read<=1;
			delay<=15;
			state<=READW1;
		end
		READW1:begin
			axi_read<=0;
			if(axi_rvalid)begin
				finished<=1;
				error<=0;
				rdata<=axi_rdata;
				state<=IDLE;
			end
			else if(delay==0)begin
				finished<=1;
				error<=1;
				rdata<=0;
				state<=IDLE;
			end
			else begin
				delay<=delay-1;
			end
		end
		WRITE:begin
			axi_addr<=addr;
			axi_wdata<=wdata;
			axi_ben<=4'hf;
			axi_write<=1;
			delay<=15;
			state<=WRITEW1;
		end
		WRITEW1:begin
			axi_write<=0;
			axi_wdata<=0;
			state<=WRITEW2;
		end
		WRITEW2:begin
			if(axi_req==0)begin
				finished<=1;
				error<=0;
				state<=IDLE;
			end
			else if(delay==0)begin
				finished<=1;
				error<=1;
				state<=IDLE;
			end
			else begin
				delay<=delay-1;
			end
		end
		default:begin
			finished<=0;
			error<=0;
			axi_addr<=0;
			axi_wdata<=0;
			axi_ben<=0;
			axi_write<=0;
			axi_read<=0;
			rdata<=0;
			state<=IDLE;
		end
		endcase
	end
end

endmodule
