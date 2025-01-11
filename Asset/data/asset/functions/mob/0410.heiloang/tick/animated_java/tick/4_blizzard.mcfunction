#> asset:mob/0410.heiloang/tick/animated_java/tick/4_blizzard
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0410.heiloang/tick/animated_java/tick/

# 演出
    execute if score @s aj.4_blizzard.frame matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 16 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 42 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 67 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 84 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 106 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.4_blizzard.frame matches 58 run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 3 0.7
