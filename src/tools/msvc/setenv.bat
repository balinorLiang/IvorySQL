@echo off
if "%UP_BUILDENV%" neq "" goto exit
set UP_BUILDENV=c:\buildenv
set PATH=%UP_BUILDENV%\deps\perl520_x64\bin;%PATH%
set PATH=%UP_BUILDENV%\deps\python27_x64;%PATH%
set PATH=%UP_BUILDENV%\deps\tcl85_x64\bin;%PATH%
set PYTHONHOME=%UP_BUILDENV%\deps\python27_x64
set PYTHONPATH=%UP_BUILDENV%\deps\python27_x64\Lib
:exit

