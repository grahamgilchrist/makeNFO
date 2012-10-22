root=$(pwd)
movieset=$1

for file in $root/*.mkv
do
  nfofilepath="${file%.*}.nfo"
  filename=$(basename "$file")
  filename_noext="${filename%.*}"

  echo "Processing $filename"
  echo "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n" > "$nfofilepath"
  echo "<movie>" >> "$nfofilepath"
  echo "  <title>$filename_noext</title>" >> "$nfofilepath"
  echo "  <set>$movieset</set>" >> "$nfofilepath"
  echo "</movie>" >> "$nfofilepath"
  echo "Output $nfofilepath"
done

