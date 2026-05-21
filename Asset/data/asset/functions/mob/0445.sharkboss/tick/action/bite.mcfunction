#> asset:mob/0445.sharkboss/tick/action/bite
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/bite/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 53 run function asset:mob/0445.sharkboss/tick/action/utility/end

#演出
execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 0.5 2
execute if score @s CD.AnimationTimer matches 23 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.1
#execute if score @s CD.AnimationTimer matches 24 run playsound minecraft:entity.shulker.death hostile @a ~ ~ ~ 1 0.9
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.5 1.8
#execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.9
execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.6


#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.1 ~ ~
execute if score @s CD.AnimationTimer matches 21..35 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s CD.AnimationTimer matches 36..55 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s CD.AnimationTimer matches 46..53 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
