  
#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# 定制默认IP
sed -i 's/192.168.1.1/12.0.0.1/g' openwrt/package/base-files/files/bin/config_generate

# 创建第三方软件包目录
cd openwrt/package && mkdir openwrt-packages

# 替换默认Argon主题
rm -rf openwrt/package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon openwrt/package/openwrt-packages

# 添加第三方软件包
cd openwrt/package/openwrt-packages
git clone https://github.com/KFERMercer/luci-app-serverchan
git clone https://github.com/rufengsuixing/luci-app-adguardhome
git clone https://github.com/kang-mk/luci-app-smartinfo