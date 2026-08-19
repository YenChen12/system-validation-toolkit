#! /bin/bash
set -euo pipefail

log_file='../logs/system_log.log'

if [[ ! -f "$log_file" ]]; then
    echo "Unable to find: $log_file" >&2
    exit 1
fi

# Create output directory for split log files
base_name="$(basename "$log_file" .log)"
outdir="../results/${base_name}_$(date +%Y%m%d_%H%M%S)"
mkdir -p -v "$outdir"

# Remove log noise
sed -E '/make\[[0-9]+\]: (Entering|Leaving) directory/d; /\[Output\]/d' "$log_file" | \

# Split log files
awk -v outdir="$outdir" '                # Output directory (`-v` -> variable)
/^>/ {
    if (outfile != "") close(outfile)    # Close previous output file
    cmd = $0                             # Store the full line
    sub(/^> */, "", cmd)                 # Remove the leading > to get the command name (Replaces only the first match found in the string)
    gsub(/[^a-zA-Z0-9_.-]/, "_", cmd)    # Replace spaces/special chars with underscores for safe filenames
    n++
    outfile = sprintf("%s/%02d_%s.log", outdir, n, cmd)    # Build the Output filename
    next
}
/^-+$/ { next }                          # Skip separator lines like "---"
outfile != "" { print > outfile }        # Write the content into the current output file
'
echo "Splits complete, please refer to: $outdir"