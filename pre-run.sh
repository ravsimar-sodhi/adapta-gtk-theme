#!/bin/sh
replaceRGB () {
    dir=$1
    oldCol=$2
    newCol=$3
    find $dir -type f -exec sed -i 's/'$oldCol'/'$newCol'/g' {}  \;
    echo $dir": " $oldCol "->" $newCol
}

replaceRGBA () {
    dir=$1
    oldCol=$2
    newCol=$3
    redhex=${newCol:0:2}
    greenhex=${newCol:2:2}
    bluehex=${newCol:4:2}
    reddec=$((16#$redhex))
    greendec=$((16#$greenhex))
    bluedec=$((16#$bluehex))
    rgbacolour="$reddec, $greendec, $bluedec"
    #old rgba colour of background rubberband
    newCol=$rgbacolour
    find $dir -type f -exec sed -i "s/$oldCol/$newCol/g" {}  \;
    echo $dir": " $oldCol "->" $newCol
}

###
replaceRGB "adapta-gtk-theme" "243035" "1D2021"
replaceRGB "adapta-gtk-theme" "29353b" "29353B"
replaceRGB "adapta-gtk-theme" "29353B" "282828"
replaceRGB "adapta-gtk-theme" "263238" "282828"
replaceRGB "adapta-gtk-theme" "2f3d44" "2F3D44"
replaceRGB "adapta-gtk-theme" "2F3D44" "32302F"

replaceRGBA "adapta-gtk-theme" "36, 48, 53" "1D2021"
replaceRGBA "adapta-gtk-theme" "41, 53, 59" "282828"
replaceRGBA "adapta-gtk-theme" "38, 50, 56" "282828"
replaceRGBA "adapta-gtk-theme" "47, 61, 68" "32302F"
###

