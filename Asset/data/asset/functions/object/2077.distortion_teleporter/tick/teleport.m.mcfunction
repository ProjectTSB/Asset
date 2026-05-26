#> asset:object/2077.distortion_teleporter/tick/teleport.m
#
# @input args:
#   Count : int
# @within function asset:object/2077.distortion_teleporter/tick/

# 演出
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a ~ ~ ~ 1 1.4
    particle dust 0.427 0 0.514 1 ~ ~3 ~ 0.7 3 0.7 0 150

# 設定された数だけ範囲内の遠くのやつを引き寄せ
    $tp @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Immovable,distance=..25,sort=furthest,limit=$(Count)] ~ ~ ~
