## Build cppunit tests with cmake  

 - https://www.freedesktop.org/wiki/Software/cppunit/
 - git://anongit.freedesktop.org/git/libreoffice/cppunit/ --branch feature/cmake
 
---

    
### Visual Studio
 
    mkdir build
    cd build
    cmake ..
     
    msbuild /p:Configuration=Release UnitTest.sln
    
    copy /Y cppunit-src\bin\Release\cppunit.dll Release\
    Release\Test_cppunit.exe
    
     test Money class with cppunit
     =========================
     MoneyTest::testConstructor : OK
     MoneyTest::testEqual : OK
     MoneyTest::testAdd : OK
     MoneyTest::testAddThrow : OK
     MoneyTest::testConstructor : OK
     MoneyTest::testEqual : OK
     MoneyTest::testAdd : OK
     MoneyTest::testAddThrow : OK
     MoneyTest::testConstructor : OK
     MoneyTest::testEqual : OK
     MoneyTest::testAdd : OK
     MoneyTest::testAddThrow : OK
     =========================

### Linux

    mkdir build
    cd build
    cmake ..
     
    make
    ctest
        Test project /home/david/Git/cmake_cppunit/build
        Start 1: Test_cppunit
    1/1 Test #1: Test_cppunit .....................   Passed    0.00 sec

### Inclusion in a cmake project

     # Project/test/               -> folder with cmake_cppunit files
     # Project/CMakeLists.txt      -> main project CMakeLists
     
     cmake_minimum_required(VERSION 3.3)
     project(test_include_cpp_unit CXX)
     # ...
     ## tests
     option (UNIT_TEST "Build unit tests" ON)
     if (UNIT_TEST)
       enable_testing ()
       add_subdirectory ( "${CMAKE_SOURCE_DIR}/test" )
     else()
       message("Skip unit tests...")
     endif()
     # ...

     

## Based on 

**Building GoogleTest and GoogleMock directly in a CMake project**
 - https://crascit.com/2015/07/25/cmake-gtest/
 - https://github.com/Crascit/DownloadProject
 
##   Author
 David Laperriere dlaperriere@outlook.com
