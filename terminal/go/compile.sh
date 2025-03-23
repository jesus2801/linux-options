if [[ ! -f "$1" ]]; then
  echo "Please provide a valid file argument"
  exit 1
fi

OUT_NAME="out_"

go build -o "$OUT_NAME" "$1"
if [ $? -eq 0 ]; then
  ./"$OUT_NAME"
  rm ./"$OUT_NAME"
fi
