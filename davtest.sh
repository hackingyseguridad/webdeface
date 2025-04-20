

echo
echo "..."
echo
for S in `cat url.txt`; do echo $S; timeout 3 davtest --url $S;
done
