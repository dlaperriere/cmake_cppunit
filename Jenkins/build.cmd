@echo off

echo "Build cppunit "
echo "---------------------------------------------------"

rem Config Visual Studio Command Line
call "%~dp0%"config_vstudio.cmd

rem Run cmake & msbuild
if %vs_ok%==1 (

rmdir /S /Q build
mkdir build
cd build

echo "---------------------------------------------------"
cmake --version
cmake ..

echo "---------------------------------------------------"
msbuild /p:Configuration=Release UnitTest.sln /v:quiet
msbuild /p:Configuration=Debug UnitTest.sln /v:quiet

cd ..
)

rem -30-
