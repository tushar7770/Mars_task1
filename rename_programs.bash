#!/bin/bash
for file in *.py
do
  mv "$file" "${file%.py}.c"
done
