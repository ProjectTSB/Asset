#> asset:object/2077.distortion_teleporter/tick/teleport.m
#
# @input args:
#   Count : int
# @within function asset:object/2077.distortion_teleporter/tick/

# 設定された数だけ引き寄せ
    $tp @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Immovable,distance=15..25,sort=random,limit=$(Count)] ~ ~ ~
