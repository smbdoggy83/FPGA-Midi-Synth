library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab_2b is
port
(
	 ------------ CLOCK ------------
	 CLOCK_50 :in std_logic;
	 ------------ LED ------------
	 LEDR :out std_logic_vector(9 downto 0);
	 KEY             	:in    	std_logic_vector(3 downto 0);
	 SW              	:in    	std_logic_vector(9 downto 0);
	 HEX0            	:out   	std_logic_vector(6 downto 0);
	 HEX1            	:out   	std_logic_vector(6 downto 0);
	 ------------ HPS ------------
	 HPS_DDR3_ADDR :out std_logic_vector(14 downto 0);
	 HPS_DDR3_BA :out std_logic_vector(2 downto 0);
	 HPS_DDR3_CAS_N :out std_logic;
	 HPS_DDR3_CKE :out std_logic;
	 HPS_DDR3_CK_N :out std_logic;
	 HPS_DDR3_CK_P :out std_logic;
	 HPS_DDR3_CS_N :out std_logic;
	 HPS_DDR3_DM :out std_logic_vector(3 downto 0);
	 HPS_DDR3_DQ :inout std_logic_vector(31 downto 0);
	 HPS_DDR3_DQS_N :inout std_logic_vector(3 downto 0);
	 HPS_DDR3_DQS_P :inout std_logic_vector(3 downto 0);
	 HPS_DDR3_ODT :out std_logic;
	 HPS_DDR3_RAS_N :out std_logic;
	 HPS_DDR3_RESET_N :out std_logic;
	 HPS_DDR3_RZQ :in std_logic;
	 HPS_DDR3_WE_N :out std_logic;
	 HPS_ENET_GTX_CLK :out std_logic;
	 HPS_ENET_INT_N :inout std_logic;
	 HPS_ENET_MDC :out std_logic;
	 HPS_ENET_MDIO :inout std_logic;
	 HPS_ENET_RX_CLK :in std_logic;
	 HPS_ENET_RX_DATA :in std_logic_vector(3 downto 0);
	 HPS_ENET_RX_DV :in std_logic;
	 HPS_ENET_TX_DATA :out std_logic_vector(3 downto 0);
	 HPS_ENET_TX_EN :out std_logic;
	 HPS_SD_CLK :out std_logic;
	 HPS_SD_CMD :inout std_logic;
	 HPS_SD_DATA :inout std_logic_vector(3 downto 0);
	 HPS_UART_RX :in std_logic;
	 HPS_UART_TX :out std_logic;
	 HPS_USB_CLKOUT :in std_logic;
	 HPS_USB_DATA :inout std_logic_vector(7 downto 0);
	 HPS_USB_DIR :in std_logic;
	 HPS_USB_NXT :in std_logic;
	 HPS_USB_STP :out std_logic;
	 
	
	------------ Audio ------------
	AUD_ADCDAT      	:in    	std_logic;
	AUD_ADCLRCK     	:inout 	std_logic;
	AUD_BCLK        	:inout 	std_logic;
	AUD_DACDAT      	:out   	std_logic;
	AUD_DACLRCK     	:inout 	std_logic;
	AUD_XCK         	:out   	std_logic;

	------------ I2C for Audio and Video-In ------------
	FPGA_I2C_SCLK   	:out   	std_logic;
	FPGA_I2C_SDAT   	:inout 	std_logic
	 
);
end entity;

architecture toplevel of lab_2b is
	
	component hps is
        port (
            audio_0_external_interface_ADCDAT                      : in    std_logic                     := 'X';             -- ADCDAT
            audio_0_external_interface_ADCLRCK                     : in    std_logic                     := 'X';             -- ADCLRCK
            audio_0_external_interface_BCLK                        : in    std_logic                     := 'X';             -- BCLK
            audio_0_external_interface_DACDAT                      : out   std_logic;                                        -- DACDAT
            audio_0_external_interface_DACLRCK                     : in    std_logic                     := 'X';             -- DACLRCK
            audio_0_interrupt_irq                                  : out   std_logic;                                        -- irq
            clk_clk                                                : in    std_logic                     := 'X';             -- clk
            hps_io_hps_io_emac1_inst_TX_CLK                        : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
            hps_io_hps_io_emac1_inst_TXD0                          : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
            hps_io_hps_io_emac1_inst_TXD1                          : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
            hps_io_hps_io_emac1_inst_TXD2                          : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
            hps_io_hps_io_emac1_inst_TXD3                          : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
            hps_io_hps_io_emac1_inst_RXD0                          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
            hps_io_hps_io_emac1_inst_MDIO                          : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
            hps_io_hps_io_emac1_inst_MDC                           : out   std_logic;                                        -- hps_io_emac1_inst_MDC
            hps_io_hps_io_emac1_inst_RX_CTL                        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
            hps_io_hps_io_emac1_inst_TX_CTL                        : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
            hps_io_hps_io_emac1_inst_RX_CLK                        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
            hps_io_hps_io_emac1_inst_RXD1                          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
            hps_io_hps_io_emac1_inst_RXD2                          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
            hps_io_hps_io_emac1_inst_RXD3                          : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
            hps_io_hps_io_sdio_inst_CMD                            : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0                             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1                             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK                            : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2                             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3                             : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            hps_io_hps_io_usb1_inst_D0                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
            hps_io_hps_io_usb1_inst_D1                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
            hps_io_hps_io_usb1_inst_D2                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
            hps_io_hps_io_usb1_inst_D3                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
            hps_io_hps_io_usb1_inst_D4                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
            hps_io_hps_io_usb1_inst_D5                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
            hps_io_hps_io_usb1_inst_D6                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
            hps_io_hps_io_usb1_inst_D7                             : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
            hps_io_hps_io_usb1_inst_CLK                            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
            hps_io_hps_io_usb1_inst_STP                            : out   std_logic;                                        -- hps_io_usb1_inst_STP
            hps_io_hps_io_usb1_inst_DIR                            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
            hps_io_hps_io_usb1_inst_NXT                            : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
            hps_io_hps_io_uart0_inst_RX                            : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
            hps_io_hps_io_uart0_inst_TX                            : out   std_logic;                                        -- hps_io_uart0_inst_TX
            hps_io_hps_io_gpio_inst_GPIO35                         : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
            i2cslave_to_avlmm_bridge_0_conduit_end_conduit_data_in : in    std_logic                     := 'X';             -- conduit_data_in
            i2cslave_to_avlmm_bridge_0_conduit_end_conduit_clk_in  : in    std_logic                     := 'X';             -- conduit_clk_in
            i2cslave_to_avlmm_bridge_0_conduit_end_conduit_data_oe : out   std_logic;                                        -- conduit_data_oe
            i2cslave_to_avlmm_bridge_0_conduit_end_conduit_clk_oe  : out   std_logic;                                        -- conduit_clk_oe
            memory_mem_a                                           : out   std_logic_vector(14 downto 0);                    -- mem_a
            memory_mem_ba                                          : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck                                          : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n                                        : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke                                         : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n                                        : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n                                       : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n                                       : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n                                        : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n                                     : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq                                          : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
            memory_mem_dqs                                         : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
            memory_mem_dqs_n                                       : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
            memory_mem_odt                                         : out   std_logic;                                        -- mem_odt
            memory_mem_dm                                          : out   std_logic_vector(3 downto 0);                     -- mem_dm
            memory_oct_rzqin                                       : in    std_logic                     := 'X'              -- oct_rzqin
        );
	end component;
	
	component SoundModule 
	  port (
		 CLOCK_50 : in std_logic;
		 I2S_BIT_CLOCK : out std_logic;
		 I2S_LEFT_RIGHT_SELECT : out std_logic;
		 I2S_SOUND_DATA : out std_logic;
		 LED : out std_logic_vector(7 downto 0);
		 MIDI_RX : in std_logic
	  );
	end component; 

	component DE10_Standard_i2sound -- verilog
		port (
			CLOCK_50 : in std_logic;
			KEY : in std_logic_vector(3 downto 0);
			LEDR : out std_logic_vector(9 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			AUD_ADCDAT : in std_logic;
			AUD_ADCLRCK : inout std_logic;
			AUD_BCLK : inout std_logic;
			AUD_DACDAT : out std_logic;
			AUD_DACLRCK : inout std_logic;
			AUD_XCK : out std_logic;
			FPGA_I2C_SCLK : out std_logic;
			FPGA_I2C_SDAT : inout std_logic
		);
	end component;

	component DE10_Standard_i2sound_vhdl
		port (
			CLOCK_50 : in std_logic;
			KEY : in std_logic_vector(3 downto 0);
			LEDR : out std_logic_vector(9 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			AUD_ADCDAT : in std_logic;
			AUD_ADCLRCK : inout std_logic;
			AUD_BCLK : inout std_logic;
			AUD_DACDAT : out std_logic;
			AUD_DACLRCK : inout std_logic;
			AUD_XCK : out std_logic;
			FPGA_I2C_SCLK : out std_logic;
			FPGA_I2C_SDAT : inout std_logic
		);
	end component;
	
	
begin

	u0 : component hps
	port map (
		clk_clk                         => CLOCK_50,                         --                     clk.clk
		hps_io_hps_io_emac1_inst_TX_CLK => HPS_ENET_GTX_CLK, --                  hps_io.hps_io_emac1_inst_TX_CLK
		hps_io_hps_io_emac1_inst_TXD0   => HPS_ENET_TX_DATA(0),   --                        .hps_io_emac1_inst_TXD0
		hps_io_hps_io_emac1_inst_TXD1   => HPS_ENET_TX_DATA(1),   --                        .hps_io_emac1_inst_TXD1
		hps_io_hps_io_emac1_inst_TXD2   => HPS_ENET_TX_DATA(2),   --                        .hps_io_emac1_inst_TXD2
		hps_io_hps_io_emac1_inst_TXD3   => HPS_ENET_TX_DATA(3),   --                        .hps_io_emac1_inst_TXD3
		hps_io_hps_io_emac1_inst_RXD0   => HPS_ENET_RX_DATA(0),   --                        .hps_io_emac1_inst_RXD0
		hps_io_hps_io_emac1_inst_MDIO   => HPS_ENET_MDIO,   --                        .hps_io_emac1_inst_MDIO
		hps_io_hps_io_emac1_inst_MDC    => HPS_ENET_MDC,    --                        .hps_io_emac1_inst_MDC
		hps_io_hps_io_emac1_inst_RX_CTL => HPS_ENET_RX_DV, --                        .hps_io_emac1_inst_RX_CTL
		hps_io_hps_io_emac1_inst_TX_CTL => HPS_ENET_TX_EN, --                        .hps_io_emac1_inst_TX_CTL
		hps_io_hps_io_emac1_inst_RX_CLK => HPS_ENET_RX_CLK, --                        .hps_io_emac1_inst_RX_CLK
		hps_io_hps_io_emac1_inst_RXD1   => HPS_ENET_RX_DATA(1),   --                        .hps_io_emac1_inst_RXD1
		hps_io_hps_io_emac1_inst_RXD2   => HPS_ENET_RX_DATA(2),   --                        .hps_io_emac1_inst_RXD2
		hps_io_hps_io_emac1_inst_RXD3   => HPS_ENET_RX_DATA(3),   --                        .hps_io_emac1_inst_RXD3
		hps_io_hps_io_sdio_inst_CMD     => HPS_SD_CMD,     --                        .hps_io_sdio_inst_CMD
		hps_io_hps_io_sdio_inst_D0      => HPS_SD_DATA(0),      --                        .hps_io_sdio_inst_D0
		hps_io_hps_io_sdio_inst_D1      => HPS_SD_DATA(1),      --                        .hps_io_sdio_inst_D1
		hps_io_hps_io_sdio_inst_CLK     => HPS_SD_CLK,     --                        .hps_io_sdio_inst_CLK
		hps_io_hps_io_sdio_inst_D2      => HPS_SD_DATA(2),      --                        .hps_io_sdio_inst_D2
		hps_io_hps_io_sdio_inst_D3      => HPS_SD_DATA(3),      --                        .hps_io_sdio_inst_D3
		hps_io_hps_io_usb1_inst_D0      => HPS_USB_DATA(0),      --                        .hps_io_usb1_inst_D0
		hps_io_hps_io_usb1_inst_D1      => HPS_USB_DATA(1),      --                        .hps_io_usb1_inst_D1
		hps_io_hps_io_usb1_inst_D2      => HPS_USB_DATA(2),      --                        .hps_io_usb1_inst_D2
		hps_io_hps_io_usb1_inst_D3      => HPS_USB_DATA(3),      --                        .hps_io_usb1_inst_D3
		hps_io_hps_io_usb1_inst_D4      => HPS_USB_DATA(4),      --                        .hps_io_usb1_inst_D4
		hps_io_hps_io_usb1_inst_D5      => HPS_USB_DATA(5),      --                        .hps_io_usb1_inst_D5
		hps_io_hps_io_usb1_inst_D6      => HPS_USB_DATA(6),      --                        .hps_io_usb1_inst_D6
		hps_io_hps_io_usb1_inst_D7      => HPS_USB_DATA(7),      --                        .hps_io_usb1_inst_D7
		hps_io_hps_io_usb1_inst_CLK     => HPS_USB_CLKOUT,     --                        .hps_io_usb1_inst_CLK
		hps_io_hps_io_usb1_inst_STP     => HPS_USB_STP,     --                        .hps_io_usb1_inst_STP
		hps_io_hps_io_usb1_inst_DIR     => HPS_USB_DIR,     --                        .hps_io_usb1_inst_DIR
		hps_io_hps_io_usb1_inst_NXT     => HPS_USB_NXT,     --                        .hps_io_usb1_inst_NXT
		hps_io_hps_io_uart0_inst_RX     => HPS_UART_RX,     --                        .hps_io_uart0_inst_RX
		hps_io_hps_io_uart0_inst_TX     => HPS_UART_TX,     --                        .hps_io_uart0_inst_TX
		hps_io_hps_io_gpio_inst_GPIO35  => HPS_ENET_INT_N,  --                        .hps_io_gpio_inst_GPIO35
		memory_mem_a                    => HPS_DDR3_ADDR,                    --                  memory.mem_a
		memory_mem_ba                   => HPS_DDR3_BA,                   --                        .mem_ba
		memory_mem_ck                   => HPS_DDR3_CK_P,                   --                        .mem_ck
		memory_mem_ck_n                 => HPS_DDR3_CK_N,                 --                        .mem_ck_n
		memory_mem_cke                  => HPS_DDR3_CKE,                  --                        .mem_cke
		memory_mem_cs_n                 => HPS_DDR3_CS_N,                 --                        .mem_cs_n
		memory_mem_ras_n                => HPS_DDR3_RAS_N,                --                        .mem_ras_n
		memory_mem_cas_n                => HPS_DDR3_CAS_N,                --                        .mem_cas_n
		memory_mem_we_n                 => HPS_DDR3_WE_N,                 --                        .mem_we_n
		memory_mem_reset_n              => HPS_DDR3_RESET_N,              --                        .mem_reset_n
		memory_mem_dq                   => HPS_DDR3_DQ,                   --                        .mem_dq
		memory_mem_dqs                  => HPS_DDR3_DQS_P,                  --                        .mem_dqs
		memory_mem_dqs_n                => HPS_DDR3_DQS_N,                --                        .mem_dqs_n
		memory_mem_odt                  => HPS_DDR3_ODT,                  --                        .mem_odt
		memory_mem_dm                   => HPS_DDR3_DM,                   --                        .mem_dm
		memory_oct_rzqin                => HPS_DDR3_RZQ,                 --                        .oct_rzqin
		
		audio_0_external_interface_ADCDAT                      => AUD_ADCDAT,                      --             audio_0_external_interface.ADCDAT
		audio_0_external_interface_ADCLRCK                     => AUD_ADCLRCK,                     --                                       .ADCLRCK
      audio_0_external_interface_BCLK                        => AUD_BCLK,                        --                                       .BCLK
      audio_0_external_interface_DACDAT                      => AUD_DACDAT,                      --                                       .DACDAT
      audio_0_external_interface_DACLRCK                     => AUD_DACLRCK,                     --                                       .DACLRCK
      audio_0_interrupt_irq                                  => CONNECTED_TO_audio_0_interrupt_irq,                                  --                      audio_0_interrupt.irq
		
		-- the following may or may not be correct
		i2cslave_to_avlmm_bridge_0_conduit_end_conduit_data_in => FPGA_I2C_SDAT, -- i2cslave_to_avlmm_bridge_0_conduit_end.conduit_data_in
      i2cslave_to_avlmm_bridge_0_conduit_end_conduit_clk_in  => FPGA_I2C_SCLK,  --                                       .conduit_clk_in
      i2cslave_to_avlmm_bridge_0_conduit_end_conduit_data_oe => FPGA_I2C_SDAT --                                       .conduit_data_oe
      --i2cslave_to_avlmm_bridge_0_conduit_end_conduit_clk_oe  => CONNECTED_TO_i2cslave_to_avlmm_bridge_0_conduit_end_conduit_clk_oe,  --                                       .conduit_clk_oe
	
	);
	
	soundOut : DE10_Standard_i2sound
	port map(
		CLOCK_50,
		KEY, 
		LEDR, 
		HEX0, 
		HEX1, 
		AUD_ADCDAT, 
		AUD_ADCLRCK, 
		AUD_BCLK, 
		AUD_DACDAT, 
		AUD_DACLRCK, 
		AUD_XCK, 
		FPGA_I2C_SCLK, 
		FPGA_I2C_SDAT
	);
	
	-- need to assign ?? to MIDI_RX in port map of soundmodule for c code to work
	
end toplevel;