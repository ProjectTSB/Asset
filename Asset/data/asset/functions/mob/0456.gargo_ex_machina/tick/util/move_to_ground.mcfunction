#> asset:mob/0456.gargo_ex_machina/tick/util/move_to_ground
#
# 汎用処理 接地
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/**

# 接地
    execute store result entity @s Pos[1] double 1 run data get entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] Pos[1]
