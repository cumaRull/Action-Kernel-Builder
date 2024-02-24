#!/bin/bash
ZIP1=Image.gz-dtb
curl -F document=@$ZIP1 "https://api.telegram.org/bot${{ secrets.TG_BOT_TOKEN }}/sendDocument" \
    -F chat_id="${{ secrets.TG_CHAT_ID }}" \
    -F "disable_web_page_preview=true" \
    -F "parse_mode=html" \
    -F caption="Build finished and pushing in Telegram"
