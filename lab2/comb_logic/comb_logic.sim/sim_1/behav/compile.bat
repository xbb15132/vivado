@echo off
set xv_path=E:\\xilinx\\xilinx\\Vivado\\2015.2\\bin
echo "xvhdl -m64 --relax -prj comb_logic_TB_vhdl.prj"
call %xv_path%/xvhdl  -m64 --relax -prj comb_logic_TB_vhdl.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
