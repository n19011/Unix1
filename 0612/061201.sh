age()
{
cat << END
END
}
if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        du -h "$file"
    else
        echo "${file}:通常のファイルではありません"
    fi
done

