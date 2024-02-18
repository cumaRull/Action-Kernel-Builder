#!/bin/bash
push() {
  ZIP1=$(echo ${NAME_KERNEL}-*.zip)
  curl -F document=@$ZIP1 "https://api.telegram.org/bot$token/sendDocument" \
    -F chat_id="$chat_id" \
    -F "disable_web_page_preview=true" \
    -F "parse_mode=html" \
    -F caption="Build finished and pushing in Telegram"

    }
