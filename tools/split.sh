#!/usr/bin/env bash

usage() {
  echo "usage: $0 <source.md> <target.md>"
}

rel_src_file=$1
rel_dest_file=$2
dest_dir="$(dirname "$rel_dest_file")"
mkdir -p "$dest_dir"

file_name=${rel_dest_file%.md}

if [ -z "$3" ]; then
  awk -v file_name="$file_name" '/^`#(question|answer)`$/{x=file_name"_"substr($0,3, length($0)-3)".md";next}{print > x;}' "${rel_src_file}"
else
  awk -v file_name="$file_name" '/^`#(question|answer)`$/{x=file_name"_"substr($0,3, length($0)-3)".md";next}{print x;}' "${rel_src_file}" | uniq
fi
if [ $? != 0 ]; then
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    printf "${RED}Unable to generate cards for ${rel_src_file}${NC}\n"
    exit 1
fi

