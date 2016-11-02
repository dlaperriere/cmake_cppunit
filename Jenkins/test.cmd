@echo off

echo "Run tests "

cd build

copy /Y cppunit-src\bin\Release\*.dll Release\
Release\Test_cppunit 2> Test_cppunit.UnitTest.xml

copy /Y cppunit-src\bin\Debug\*.dll Debug\
Debug\Test_cppunit 2> Test_cppunit.Debug.UnitTest.xml

cd ..


