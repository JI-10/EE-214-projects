		library ieee;
		use ieee.std_logic_1164.all;
		use ieee.numeric_std.all;
		entity covid is
			port( I:in std_logic_vector(4 downto 0);
		reset,clk:in std_logic;
		Y: out std_logic);
		end covid;
		architecture bhv of covid is
		---------------Define state type here-----------------------------
		type state is (rst,s1,s2,s3,s4); -- Fill other states here
		
		---------------Define signals of state type-----------------------
		signal y_present,y_next: state:=rst;
		begin
		clk_proc:process(clk,reset)
		begin
		if(clk='1' and clk' event) then
		if(reset='1') then
		    y_present <= rst;    
				  -- Fill the code here
		else
		    y_present <= y_next;
			  -- Fill the code here
		end if;
		end if;
		end process;
		state_transition_proc:process(I,y_present)
		begin
		case y_present is
		when rst=>
		if(unsigned(I)=3) then --c has been detected
		y_next<= s1;
	   Y <= '0';
		else 
		y_next <= rst;
		Y <= '0';
		end if;
		when s1=>
		if(unsigned(I)=15) then 
		y_next <= s2;
		Y <= '0';
		else 
		y_next <= s1;
		Y <= '0';
		end if;
		when s2 =>
		if(unsigned(I)=22) then
		y_next <= s3;
		Y <= '0';
		else 
		y_next <= s2;
		Y <= '0';
		end if;
		when s3 =>
		if(unsigned(I)=9) then
		y_next <= s4;
		Y <= '0';
		else
		y_next <= s3;
		Y <= '0';
	   end if;
	   when s4 =>
	   if(unsigned(I)=4) then
	   y_next <= rst;
		Y <= '1';
	   else 
	   y_next <= s4;
		Y <= '0';
	   end if;
	   when others=>
	   y_next <= rst;	
		Y <= '0';
		end case;
		
		
		
		end process;
--		
--		out_proc:process(I,clk)
--		begin
--		if(unsigned(I)=4) and (y_present=s4) then
--		Y <= '1';
--		else
--		Y <= '0';
--		end if;
--			  -- Fill the code here
--		end process;
		
		end bhv;
		-------------------------
		---------Fill rest of the code here---------
		-------Similarly define output process after this which will give
		-------the output based on the present state and input(Mealy machine)
		-------I have you have watched the video of Mealy machine.