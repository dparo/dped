#!/bin/bash
./build.sh release windows
./build.sh release
rm dped.zip 2>/dev/null
cp winlib/SDL2-2.0.10/x86_64-w64-mingw32/bin/SDL2.dll SDL2.dll
strip dped
strip dped.exe
strip SDL2.dll
zip dped.zip dped dped.exe SDL2.dll data -r
