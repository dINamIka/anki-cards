#!/usr/bin/env bash

#
# Author: Jake Zimmerman <jake@zimmerman.io>
#
# A simple script to build an HTML file using Pandoc
#

set -euo pipefail

usage() {
  echo "usage: $0 <source.md> <dest.html>"
}

# ----- args and setup -----

src="${1:-}"
dest="${2:-}"
if [ "$src" = "" ] || [ "$dest" = "" ]; then
  2>&1 usage
  exit 1
fi

case "$src" in
  -h|--help)
    usage
    exit
    ;;
esac

if command -v grealpath &> /dev/null; then
  realpath="grealpath"
elif command -v realpath &> /dev/null; then
  realpath="realpath"
else
  2>&1 echo "$0: This script requires GNU realpath. Install it with:"
  2>&1 echo "    brew install coreutils"
  exit 1
fi

# ----- main -----

for file in "docs/css/theme.css" "docs/css/skylighting-solarized-theme.css"; do
  if ! [ -f "$file" ]; then
    2>&1 echo "$0: warning: CSS theme file is missing: $file (will 404 when serving)"
  fi
done

dest_dir="$(dirname "$dest")"
mkdir -p "$dest_dir"

css_rel_path="$("$realpath" "docs/css/" --relative-to "$dest_dir")"

## Pandoc doc
## https://pandoc.org/MANUAL.html#description
#pandoc \
#  --katex \  ## display embedded TeX math in HTML output
#  --from markdown+tex_math_single_backslash \  ## input formats
#  --filter pandoc-sidenote \  ## an executable to be used as a filter
#  --to html5+smart \   ## output formats
#  --variable full-html=true \ ## customer variables, full-htlm is used in template.htlm5
#  --template=template \ ## specified file as a custom template for the generated document https://pandoc.org/MANUAL.html#option--template
#  --css="$css_rel_path/theme.css" \ ## link to CSS
#  --css="$css_rel_path/skylighting-solarized-theme.css" \
#  --output "$dest" \ ## Write output to FILE instead of stdout
#  "$src"

pandoc \
  --katex \
  --from markdown+tex_math_single_backslash \
  --filter pandoc-sidenote \
  --to html5+smart \
  --template=template \
  --css="$css_rel_path/theme.css" \
  --css="$css_rel_path/skylighting-solarized-theme.css" \
  --output "$dest" \
  "$src"
