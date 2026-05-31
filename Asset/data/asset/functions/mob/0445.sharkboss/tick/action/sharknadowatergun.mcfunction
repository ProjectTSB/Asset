#> asset:mob/0445.sharkboss/tick/action/sharknadowatergun
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_watergun/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 80 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..73 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal

#演出
execute if score @s CD.AnimationTimer matches 30 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 30 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8
execute if score @s CD.AnimationTimer matches 40 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 40 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8
execute if score @s CD.AnimationTimer matches 54 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
execute if score @s CD.AnimationTimer matches 54 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.8

execute if score @s CD.AnimationTimer matches 30 positioned ~ ~2 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
execute if score @s CD.AnimationTimer matches 40 positioned ~ ~2 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
execute if score @s CD.AnimationTimer matches 50 positioned ~ ~2 ~ run function asset:mob/0445.sharkboss/vfx/water_bullet
