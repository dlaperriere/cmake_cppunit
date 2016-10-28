@echo off

echo "Build cppunit "

mkdir build
cd build

cmake ..
msbuild /p:Configuration=Release UnitTest.sln

cd ..