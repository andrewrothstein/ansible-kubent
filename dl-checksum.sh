#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/doitintl/kube-no-trouble/releases/download
APP=kubent

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}
    local platform="$os-$arch"
    local file="${APP}-${ver}-${platform}.${archive_type}"
    local url=$MIRROR/$ver/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dlver () {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux arm64
    dl $ver linux amd64
    dl $ver darwin arm64
    dl $ver darwin amd64
    dl $ver windows amd64
}

dlver ${1:-0.7.0}
