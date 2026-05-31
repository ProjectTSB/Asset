#> asset:mob/0445.sharkboss/tick/action/watergun1
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/watergun/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 73 run function asset:mob/0445.sharkboss/tick/action/utility/end


#モーション系
execute if score @s CD.AnimationTimer matches 0..73 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal

#演出
execute if score @s CD.AnimationTimer matches 21 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 21 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8
execute if score @s CD.AnimationTimer matches 31 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 31 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8
execute if score @s CD.AnimationTimer matches 44 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 44 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8

execute if score @s CD.AnimationTimer matches 21 positioned ~ ~1.5 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
execute if score @s CD.AnimationTimer matches 31 positioned ~ ~1.5 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
execute if score @s CD.AnimationTimer matches 41 positioned ~ ~1.5 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
