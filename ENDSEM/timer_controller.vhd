LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity timer_controller is
port( inp_switch:in std_logic_vector(2 downto 0);
reset,clock_50, clock_1:in std_logic;
out_LED: out std_logic_vector(3 downto 0));
end timer_controller;

architecture beh of timer_controller is
	type state is (RST,timer1,timer2,timer3);
	signal y_present,y_next : state := RST;
	signal out_sig : std_logic_vector(1 downto 0);
	component timer_ckt is
	port ( clock_1, clock_50, reset : in std_logic;
       timer_inp : in std_logic_vector(1 downto 0);
       LED : out std_logic_vector(3 downto 0));
   end component;
	begin
	Tm : timer_ckt port map(clock_1 => clock_1,clock_50=>clock_50,reset=>reset,timer_inp=>out_sig,LED=>out_LED);
	clock_process : process(clock_50)
		begin
			if(clock_50'event and clock_50='1') then
				if reset = '1' then
					y_present<=RST;
				else
					y_present<=y_next;
				end if;
			end if;
		end process;
	state_transition : process(inp_switch,y_present)
		begin	
			if reset = '1' then
				y_next<=RST;
				out_sig<="00";
			else 
				case y_present is
				when RST =>
					if (unsigned(inp_switch)=1) then
						y_next<=timer1;
						out_sig<="01";
					else 
					   y_next<=RST;
						out_sig<="00";
					end if;
				when timer1 =>
					if (unsigned(inp_switch)=2) then
						y_next<=timer2;
						out_sig<="10";
					else
						y_next<=timer1;
						out_sig<="01";
					end if;
				when timer2 =>
					if (unsigned(inp_switch)=4) then
						y_next<=timer3;
						out_sig<="11";
					else 
						y_next<=timer2;
						out_sig<="10";
					end if;
				when timer3 =>
					if reset='1' then 
						y_next<=RST;
						out_sig<="00";
					else
					   y_next<=timer3;
						out_sig<="11";
					end if;
				when others =>
					y_next<=RST;
					out_sig<="00";
			   end case;
			end if;	
			
		end process;

end beh;
	
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					