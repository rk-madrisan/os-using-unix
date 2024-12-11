read -p "Enter the name of the file: " file

if [ ! -f "$file" ]; then
    echo "Error: File does not exist or is not a regular file."
    exit 1
elif [ ! -r "$file" ]; then
    echo "Error: File is not readable."
    exit 1
fi


echo "Content of the file '$file':"
cat "$file"


line_count=$(wc -l < "$file")
word_count=$(wc -w < "$file")


echo "Number of lines: $line_count"
echo "Number of words: $word_count"

