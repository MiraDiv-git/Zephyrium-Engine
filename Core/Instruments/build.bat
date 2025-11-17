@echo off

set /p OS="Enter OS (w = Windows, l = Linux, m = macOS, n = Native): "

if /i "%OS%"=="w" (
    echo Building for Windows...
    zig build -Dtarget=windows --prefix ../Bin/ --prefix-exe-dir Windows.x64/
    pause

) else if /i "%OS%"=="l" (
    echo Building for Linux...
    zig build -Dtarget=linux --prefix ../Bin/ --prefix-exe-dir Linux.x86_64/
    pause

) else if /i "%OS%"=="m" (
    echo Building for macOS...
    zig build -Dtarget=macos --prefix ../Bin/ --prefix-exe-dir macOS.aarch64/
    pause

) else if /i "%OS%"=="n" (
    echo Building for Native (host) system...
    zig build --prefix ../Bin/ --prefix-exe-dir Native/
    pause

) else (
    echo Unknown OS.
    pause
)