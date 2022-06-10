make clean
rm test-cmd.txt
rm -r exes
make CC=../sysroot/bin/musl-gcc 
mkdir exes
find . -name '*.exe' | xargs -I {} cp {} exes
sed 's/src\/[a-z]*\///g' test-cmd.txt > exes/test-all.sh
chmod +x exes/test-all.sh
