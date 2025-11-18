# Zephyrium Engine
... is a modular game engine built around a lightweight core written in C, with modules in Rust and game logic in Lua. The editor is built with Qt 6 and C++, development tools use Python, and the core API is written in C. <br>
Because the core, every module, and the editor are separate libraries, we call it a "Microkernel Engine."
# Dependencies
- **[Rust v1.91.1](https://rustup.rs/)** *or higher* - For Modules
- **[Meson build system](https://github.com/mesonbuild/meson/releases)** - For Core and API
- **[Python 3.14](https://www.python.org/)** *or higher* - For Automation scripts (such as Building)

### On Windows
- **[Visual Studio 2026 Build Tools](https://visualstudio.microsoft.com/downloads)** - For C and Rust compilation
- **[VCRedist v14 (2017-2026)](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)** *or higher* - Runtime libraries for C

### On Linux
- **[GCC](https://gcc.gnu.org/)** - For C and Rust compilation
- **Base development tools**:
    - *Ubuntu/Debian:* `sudo apt install build-essential`
    - *Fedora/RHEL:* `sudo dnf groupinstall "@development-tools"`
    - *Arch Linux:* `sudo pacman -S base-devel`

### On MacOS
- **[Command Line Tools for Xcode](https://developer.apple.com/xcode/)** - For C and Rust compilation. 
    - Run `xcode-select --install` in terminal.