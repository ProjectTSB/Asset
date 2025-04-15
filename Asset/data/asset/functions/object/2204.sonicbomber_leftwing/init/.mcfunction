#> asset:object/2204.sonicbomber_leftwing/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2204/init

# 目標位置へ移動
    execute positioned as @e[type=marker,tag=5X.Centre,distance=..192,limit=1] run tp @s ~ ~ ~ ~ 0
