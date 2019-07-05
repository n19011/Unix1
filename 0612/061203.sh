usage()
{
cat << END
END
}
if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

if [ -d "$1" ]; then
    for file in $(ls "$1")
    do
        if [ ! -r "${1}/${file}" ]; then
            echo "$file"
        fi
    done
else
    echo "${1}:ディレクトリではありません"
fi

