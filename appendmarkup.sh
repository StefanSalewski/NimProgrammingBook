for filename in css/*.css; do
  cat markup >> "$filename"
done

