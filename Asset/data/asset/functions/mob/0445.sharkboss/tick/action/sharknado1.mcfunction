#> asset:mob/0445.sharkboss/tick/action/sharknado1
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 80 run function asset:mob/0445.sharkboss/tick/action/utility/end

execute if score @s CD.AnimationTimer matches 0 run weather rain

#演出
execute if score @s CD.AnimationTimer matches 6 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 2 0.6
execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:item.elytra.flying hostile @a ~ ~ ~ 2 0.7
