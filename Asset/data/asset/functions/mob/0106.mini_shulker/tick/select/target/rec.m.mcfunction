#> asset:mob/0106.mini_shulker/tick/select/target/rec.m
# @input args Step : double
# @within function asset:mob/0106.mini_shulker/tick/select/target/

# ターゲットを試みる
    execute as @a[tag=2Y.This,dx=0,limit=1] run tag @s add 2Y.Target
    execute as @a[tag=2Y.This,dx=0,limit=1] run return fail

# リセット
    execute unless entity @e[type=#lib:living,type=!player,tag=this,distance=..25,limit=1] run return fail
# 再帰
    $execute positioned ^ ^ ^$(Step) if block ^ ^ ^$(Step) #lib:no_collision run function asset:mob/0106.mini_shulker/tick/select/target/rec.m with storage asset:temp 2Y
