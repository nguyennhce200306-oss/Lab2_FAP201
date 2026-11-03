-- Git account : Nguyen Hoang Nguyen
-- Author      : Nguyen Hoang Nguyen
-- Student ID  : CE200306
-- Purpose     : Testbench Lab02 - kiem tra 4 truong hop AND (00, 01, 10, 11)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab2tb is
end entity Lab2tb;

architecture behavior of Lab2tb is

    component Lab2 is
        port (
            i_sw1 : in  STD_LOGIC;
            i_sw2 : in  STD_LOGIC;
            o_led : out STD_LOGIC
        );
    end component;

    signal i_sw1 : STD_LOGIC := '1';
    signal i_sw2 : STD_LOGIC := '1';
    signal o_led : STD_LOGIC;

begin

    uut: Lab2 port map (
        i_sw1 => i_sw1,
        i_sw2 => i_sw2,
        o_led => o_led
    );

    stim_proc: process
        procedure check(a, b, expected : STD_LOGIC; name : string) is
        begin
            i_sw1 <= not a;
            i_sw2 <= not b;
            wait for 10 ns;
            assert o_led = expected
                report "FAIL " & name severity error;
        end procedure;
    begin
        check('0', '0', '0', "00"); 
        check('0', '1', '0', "01"); 
        check('1', '0', '0', "10");  
        check('1', '1', '1', "11");  

        report "LAB02 ALL 4 AND CASES PASS" severity note;
        wait;
    end process;

end architecture behavior;
