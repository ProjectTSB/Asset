#> asset:mob/0412.tiamat/tick/animated_java/tick/0_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0412.tiamat/tick/animated_java/tick/

# 演出
    execute if score @s aj.0_start.frame matches 16 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.0_start.frame matches 16 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.6
    execute if score @s aj.0_start.frame matches 16 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.5
    execute if score @s aj.0_start.frame matches 12 run particle explosion ~ ~1 ~ 2 0 2 0 20 force
    execute if score @s aj.0_start.frame matches 39 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.0_start.frame matches 53..75 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    execute if score @s aj.0_start.frame matches 53..75 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    execute if score @s aj.0_start.frame matches 96 run particle block blackstone_wall ~ ~1 ~ 2 0 2 0 20 force
    execute if score @s aj.0_start.frame matches 101 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
