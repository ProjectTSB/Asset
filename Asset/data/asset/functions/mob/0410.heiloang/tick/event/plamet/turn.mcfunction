#> asset:mob/0410.heiloang/tick/event/plamet/turn
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 自身を向く
    execute facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 角度を90度刻みに合わせる
    execute store result score @s BE.Dummy run data get entity @s Rotation[0]
    scoreboard players operation @s BE.Dummy /= $90 Const
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s BE.Dummy *= $90 Const
