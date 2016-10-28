@echo off

echo "Run tests "

cd build
copy /Y cppunit-src\bin\Release\cppunit.dll Release\
Release\Test_cppunit 2> Test_cppunit.UnitTest.xml

cd ..


