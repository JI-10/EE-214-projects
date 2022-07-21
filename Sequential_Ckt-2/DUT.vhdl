-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component covid is
     port( reset,clk: in std_logic;
	        I : in std_logic_vector(4 downto 0);
         	Y: out std_logic);
end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: covid 
			port map (
			    I(4) => input_vector(6),
				 I(3) => input_vector(5),
				 I(2) => input_vector(4),
				 I(1) => input_vector(3),
				 I(0) => input_vector(2),
			    reset => input_vector(1),
				 clk => input_vector(0),
				 Y => output_vector(0));

end DutWrap;

