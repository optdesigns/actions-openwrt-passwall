#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.3/g' package/base-files/files/bin/config_generate 
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR 
git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy 
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome 
git clone https://github.com/vernesong/OpenClash package/OpenClash 
./scripts/feeds update -a 
./scripts/feeds install -a 
