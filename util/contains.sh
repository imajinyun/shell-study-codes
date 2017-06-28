#!/usr/bin/env bash
###############################################################################
# Check if an element is in an array.
#
# @file   contains.sh
# @author majinyun <imajinyun@gmail.com>
# @date   2017-07-29 18:01
###############################################################################

function contains() {
    local n=$#
    local value=${!n}
    for ((i=1;i < $#;i++)) {
        if [ "${!i}" == "${value}" ]; then
            echo "ok"
            return 0
        fi
    }
    echo "no"
    return 1
}

declare -a array
array=(
    "Alipay"
    "WeChat"
    ""
)

if [ $(contains "${array[@]}" "QQ") == "no" ]; then
    echo "QQ not contains in array."
fi

if [ $(contains "${array[@]}" "Alipay") == "ok" ]; then
    echo "Alipay contains in array."
fi
