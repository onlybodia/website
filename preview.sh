#!/bin/zsh
cd "$(dirname "$0")"
echo "Preview at http://localhost:8000"
python3 -m http.server 8000
