@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim testb_behav -key {Behavioral:sim_1:Functional:testb} -tclbatch testb.tcl -view C:/Users/Dr804t/Documents/CPE222/pong_4/Top_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
