#!/bin/bash
cd "$(dirname "$0")"
PORT=8765
URL="http://localhost:$PORT/index.html"
if lsof -ti:$PORT >/dev/null 2>&1; then
  open "$URL"; exit 0
fi
open "$URL"
echo ""
echo "  行程表已啟動：$URL"
echo "  伺服器執行中… 按 Ctrl+C 即可停止。"
echo ""
python3 -m http.server $PORT
