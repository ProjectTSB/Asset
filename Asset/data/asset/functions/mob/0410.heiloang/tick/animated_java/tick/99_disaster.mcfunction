#> asset:mob/0410.heiloang/tick/animated_java/tick/99_disaster
#
# アニメーション再生
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.99_disaster.frame matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.99_disaster.frame matches 25 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.99_disaster.frame matches 82 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.99_disaster.frame matches 26 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.7
    execute if score @s aj.99_disaster.frame matches 26 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
