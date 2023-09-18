#!/usr/bin/env bash
export LANG=en_US.UTF-8

echoType='echo -e'
# 域名
domain=

echoContent() {
    case $1 in
    # 红色
    "red")
        # shellcheck disable=SC2154
        ${echoType} "\033[31m${printN}$2 \033[0m"
        ;;
        # 天蓝色
    "skyBlue")
        ${echoType} "\033[1;36m${printN}$2 \033[0m"
        ;;
        # 绿色
    "green")
        ${echoType} "\033[32m${printN}$2 \033[0m"
        ;;
        # 白色
    "white")
        ${echoType} "\033[37m${printN}$2 \033[0m"
        ;;
    "magenta")
        ${echoType} "\033[31m${printN}$2 \033[0m"
        ;;
        # 黄色
    "yellow")
        ${echoType} "\033[33m${printN}$2 \033[0m"
        ;;
    esac
}

# 主菜单
menu() {
    echoContent red "\n=============================================================="
    echoContent green "作者：小开"
    echoContent green "当前版本：v1.0"
    echoContent green "描述：Tiktok节点快速搭建插件\c"
    echoContent red "\n=============================================================="
        
	echo   
	echoContent yellow "请输入要配置的域名 例: www.xiaokai.com --->"
    read -r -p "域名:" domain
	
	if [[ -z ${domain} ]]; then
        echoContent red "  域名不可为空--->"
    else
	    rm -rf default_input.txt
	    # 生成默认值文件
        echo "1" > default_input.txt
		echo "1" >> default_input.txt
		echo ${domain} >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
		echo "" >> default_input.txt
        wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh < default_input.txt
    fi
	
}

menu
