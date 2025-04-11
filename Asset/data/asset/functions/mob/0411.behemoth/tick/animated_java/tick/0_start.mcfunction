#> asset:mob/0411.behemoth/tick/animated_java/tick/0_start
#
# アニメーション用のイベントへの振り分け
#
# @within asset:mob/0411.behemoth/tick/animated_java/tick/

# 演出
    execute if score @s aj.0_start.frame matches 12 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.0_start.frame matches 12 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.6
    execute if score @s aj.0_start.frame matches 12 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.5
    execute if score @s aj.0_start.frame matches 12 run particle explosion ~ ~1 ~ 2 0 2 0 20 force
    execute if score @s aj.0_start.frame matches 35 run particle block blackstone_wall ~ ~1 ~ 2 0 2 0 20 force
    execute if score @s aj.0_start.frame matches 40 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s aj.0_start.frame matches 58..73 positioned ~ ~32 ~ run playsound entity.polar_bear.warning hostile @a[distance=..80] ~ ~ ~ 0.1 0.7 0.5
    execute if score @s aj.0_start.frame matches 58..62 positioned ~ ~32 ~ run playsound entity.zombie_horse.death hostile @a[distance=..80] ~ ~ ~ 0.1 0.6 0.5
    execute if score @s aj.0_start.frame matches 93 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
