rem Configure Visual Studio command line
rem
rem  https://docs.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=vs-2019


set vs_ok=0
set vsdir="%programfiles(x86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\"
set vscl=%vsdir%VsDevCmd.bat
set dir="%~dp0%"
set vs_version="?"

if exist %vscl% (
    echo using Visual Studio 2019 
    rem %comspec% /k "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
    set vs_ok=1
    set vs_version="2019"
    rem set VSCMD_DEBUG=1
    cd "%programfiles(x86)%\Microsoft Visual Studio\2019\Community\Common7\Tools\"
    call VsDevCmd.bat
    cd %dir%
    cd ..
) 

if %vs_ok%==0 (
    set vsdir="%VS140COMNTOOLS%"
    set vscl=%vsdir%vsvars32.bat
    if exist %vscl% (
       echo using Visual Studio 2015
       set vs_version="2015"
       set vs_ok=1     
       call  %vsdir%vsvars32.bat     
    )
)
if %vs_ok%==0 (
   echo could not find Visual Studio 2015 or 2019 .. 
   set vscl=""
   exit /b -1
)


