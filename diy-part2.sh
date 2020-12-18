#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#
#删除Lean/packages下的luci-theme-argon
rm -rf ./package/lean/luci-theme-argon
#
#运行 ./scripts/feeds install -a 时候报错形如“WARNING: Makefile 'package/lean/amule/Makefile' has a dependency on 'libpng', which does not exist”
#重新./scripts/feeds install -a
rm -rf ./feeds
./scripts/feeds update -a
./scripts/feeds install -a
