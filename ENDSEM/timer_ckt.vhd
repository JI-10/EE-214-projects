library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_ckt is
port ( clock_1, clock_50, reset : in std_logic;
       timer_inp : in std_logic_vector(1 downto 0);
       LED : out std_logic_vector(3 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;
-- Define architecture body
architecture beh of timer_ckt is

begin
process(clock_50)
variable timer1 : integer range 0 to 300 := 1;
variable timer2 : integer range 0 to 500 := 1;
variable timer3 : integer range 0 to 250 := 1;
begin
   
	if (clock_50'event and clock_50='1') then
	  if reset = '1' then
		  timer1:=1;
		  timer2:=1;
		  timer3:=1;
		  LED <= "1000";
	  else
		if unsigned(timer_inp)=0 then
		   LED <= "1000";
		elsif(unsigned(timer_inp)=1) then
			if timer1 = 299 then
				timer1 := 1;
				LED <= "0000";
			else 
				timer1 := timer1 +1;
				LED <="0001";
			end if;
		elsif(unsigned(timer_inp)=2) then
			if timer2 = 499 then
				timer2 := 1;
				LED <= "0000";
			else 
				timer2 := timer2 + 1;
				LED <= "0010";
			end if;
		elsif(unsigned(timer_inp)=3) then
			if timer3 = 249 then
				timer3 := 1;
				LED <= "0000";
			else 
				timer3 := timer3 + 1;
				LED <="0100";
			end if;
		end if;
		end if;
	end if;
end process;
end beh;