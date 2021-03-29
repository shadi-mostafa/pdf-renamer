for f in output/page*.pdf; do
     ID=$(pdfgrep "Identity No" "$f" | grep -oE "[1-2][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]")
     if [ ! -z "${ID}" ]; then
         mv "$f" "output/${ID}.pdf"
     fi
done