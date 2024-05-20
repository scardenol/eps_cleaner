# A simple windows executable bash file that uses GhostScript
# to cleanup EPS files and reduce their size x4.5 times.

# Make an output directory
mkdir -p output

# We need to run this GhostScript command on every *.eps file:
# gswin64c -o out-%file_name%.eps -sDEVICE=ps2write -dEPSCrop %file_name%

# Loop through all the EPS files in the current directory
for file in *.eps
do
    # Get the file name without the extension
    file_name=$(basename "$file" .eps)
    # Run GhostScript on the file
    gswin64c -o output/out-$file_name.eps -sDEVICE=ps2write -dEPSCrop $file
done

# Remove the out- prefix from the output files
for file in output/*.eps
do
    mv $file ${file/out-/}
done