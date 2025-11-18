import os
from pathlib import Path

def build(os_name):
    current_dir = Path(__file__).parent.absolute()
    core_path = (current_dir / '../../Core').resolve()
    
    build_dir = core_path / 'build'
    
    print(f"[*] Source directory: {core_path}")
    print(f"[*] Build directory: {build_dir}")
    
    build_dir.mkdir(parents=True, exist_ok=True)
    
    code = os.system(f'meson setup "{build_dir}" "{core_path}" -Ddefault_library=shared')

    if code != 0:
        print("[!] Setup failed")
        exit(1)

    print("[+] Setup finished, now compiling...")

    compile_code = os.system(f"meson compile -C {build_dir}")

    if compile_code != 0:
        print("[!] Compilation failed")
        exit(1)
    
    print("[+] Compilation successful")
    
    print(f"[+] Library should be in: {build_dir}/<os_architecture>/")


ch = input("Select OS (w - Windows, l - Linux, m - macOS): ").lower()
build(ch)
print("\n[!] Process finished")