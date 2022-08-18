#!/bin/bash
echo "input file1"
cat > file1
echo "input file2"
cat > file2

echo "file1 比 file2 少了"
cat file1 | grep -w -v -f -(cat file2)
echo "file2 比 file1 少了"
cat file2 | grep -w -v -f -(cat file1)