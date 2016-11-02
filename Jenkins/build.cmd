@echo off

echo "Build cppunit "

rem  Visual Studio 2015 Command Line
call "%VS140COMNTOOLS%"vsvars32.bat

rmdir /S /Q build
mkdir build
cd build

cmake ..
msbuild /p:Configuration=Release UnitTest.sln /v:quiet
msbuild /p:Configuration=Debug UnitTest.sln /v:quiet

cd ..
