# eps_cleaner
A simple Windows/Linux/Mac executable batch/bash file that uses GhostScript to cleanup EPS files and reduce their size to x1/5 their original size.

# Requirements
The script was built with:
- **GPL Ghostscript version:** 10.03.1 (2024-05-02)
- **OS:** Microsoft Windows 11 Home Single Language 10.0.22631

You can download GhostScript from the official page: https://ghostscript.com/releases/index.html

# How to use?
## Windows
Simply put the ```eps_cleaner.bat``` file on the directory that contains the EPS file(s) and execute it.

*Output:* the batch creates an ```output``` folder inside the directory with the cleaned/optimized EPS files.

## Lunix & Mac (ported from Windows)
1. Put the ```eps_cleaner.sh``` file on the directory that contains the EPS file(s).
2. Make the script executable by running ```chmod +x process_eps.sh``` on a terminal.
3. Run the script.

*Output:* the batch creates an ```output``` folder inside the directory with the cleaned/optimized EPS files.
