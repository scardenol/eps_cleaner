:: A simple windows executable batch file that uses GhostScript
:: to cleanup EPS files and reduce their size x4.5 times.

:: Make an "output" directory
mkdir output

:: Loop through all the EPS files in the current directory
for %%f in (*.eps) do (
    echo %%f
    gswin64c -o "output\%%f" -sDEVICE=ps2write -dEPSCrop "%%f"
)