-- Git account : Nguyen Hoang Nguyen
-- Author      : Nguyen Hoang Nguyen
-- Student ID  : CE200306
-- Purpose     : Lab02 - LED sang khi ca hai switch deu duoc nhan (Y = A AND B)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab2 is
    port (
        i_sw1 : in  STD_LOGIC;  
        i_sw2 : in  STD_LOGIC;  
        o_led : out STD_LOGIC  
    );
end entity Lab2;

architecture rtl of Lab2 is
    signal a_active : STD_LOGIC; 
    signal b_active : STD_LOGIC;  
begin
    
    a_active <= not i_sw1;
    b_active <= not i_sw2;

    o_led <= a_active and b_active;
end architecture rtl;
