usage()
{
cat << END
END
}
if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

file=$1
if [ -d "$file" ]; then
   ls -l "$file" | awk '$1~/^-..x/{print $9}'
else
    echo "${file}:ディレクトリではありません"
fi

