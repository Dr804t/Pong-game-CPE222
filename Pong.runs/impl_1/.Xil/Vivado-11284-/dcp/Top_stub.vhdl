-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
  Port ( 
    btnU : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnD : in STD_LOGIC;
    btnR : in STD_LOGIC;
    sw : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vgaRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vgaGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vgaBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsync : out STD_LOGIC;
    Vsync : out STD_LOGIC
  );

end Top;

architecture stub of Top is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
