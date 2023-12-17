@echo off 
set "sourceFolder=C:\Source" 
set "destinationFolder=C:\Destination"  

for %%i in ("%sourceFolder%\*.pdf") do (     
	move "%%i" "%destinationFolder%" 
)  

echo All PDF files moved successfully! 
