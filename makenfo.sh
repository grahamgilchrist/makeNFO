root=$(pwd)
movieset=$1
echo $root
for file in $root/*.mkv
do
  filepath="${file%.*}.nfo"
  filename=$(basename $file)
  echo "Processing $filename"
  echo "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n" > $filepath
  echo "<movie>" >> $filepath
  echo "  <title>$filename</title>" >> $filepath
  echo "  <set>$movieset</set>" >> $filepath
  echo "</movie>" >> $filepath
  echo "Output $filepath"
done

