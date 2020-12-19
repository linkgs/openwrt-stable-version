#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
git clone -b master https://github.com/firkerword/OpenClash.git package/OpenClash
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/esirplayground/luci-app-poweroff.git package/poweroff
# git clone https://github.com/firkerword/v2fly.git package/v2fly
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
svn co https://github.com/firker/diy-ziyong/trunk/smartdns package/smartdns
svn co https://github.com/firker/diy-ziyong/trunk/vssr/https-dns-proxy package/https-dns-proxy
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package package/lienol
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash && cd package/OpenClash && git checkout 04bbcf6f56c794d8ee1013123ed2d0dd2a89cb55
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/brook
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/tcping package/tcping
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/trojan-go
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/trojan-plus
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/naiveproxy package/naiveproxy
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/v2ray package/v2ray
# svn co https://github.com/xiaorouji/openwrt-package/trunk/package/v2ray-plugin package/v2ray-plugin
