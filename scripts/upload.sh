#!/bin/bash
push() {
  ZIP1=${GITHUB_WORKSPACE}/android/AnyKernel/${{ github.event.inputs.ZIP_NAME }}-${{ github.event.inputs.KERNEL_DEFCONFIG }}-${{ env.BUILD_DATE }}.zip
  curl -F document=@$ZIP1 "https://api.telegram.org/bot${{ secrets.TG_BOT_TOKEN }}/sendDocument" \
    -F chat_id="${{ secrets.TG_CHAT_ID }}" \
    -F "disable_web_page_preview=true" \
    -F "parse_mode=html" \
    -F caption="Build finished and pushing in Telegram"

    }
