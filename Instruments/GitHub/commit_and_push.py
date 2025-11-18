import os

os.chdir("../../")

msg = input("Commit message: ")

os.system("git add .")
os.system(f'git commit -m "{msg}"')

if input("Continue? (y/n): ").strip().lower() == 'y':
    os.system("git push -u origin main")
    print("[!] Done")
else:
    print("[!] Aborted by user")