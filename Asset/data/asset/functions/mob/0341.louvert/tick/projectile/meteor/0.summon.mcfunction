#> asset:mob/0341.louvert/tick/projectile/meteor/0.summon
#
# メテオ 召喚
#
# @within function asset:mob/0341.louvert/**

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["9H.Temp.This","9H.Meteor"]}

# 初期化処理
    execute as @e[type=marker,tag=9H.Temp.This,distance=..0.01] at @s run function asset:mob/0341.louvert/tick/projectile/meteor/2.init