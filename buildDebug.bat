call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"
call "C:\Program Files\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat"
call "C:\Program Files\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat"
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\vsvars32.bat"
call "C:\Program Files\Microsoft Visual Studio 12.0\Common7\Tools\vsvars32.bat"

del buildDebug.log
del Northwind\bin\Debug\*.* /q
msbuild Northwind\Northwind.csproj /filelogger1 /fileloggerparameters1:logfile=buildDebug.log;append;verbosity=n /p:Configuration=Debug /p:Platform=AnyCPU  /maxcpucount:%NUMBER_OF_PROCESSORS%
cd Northwind\bin\Debug
start Northwind.exe
