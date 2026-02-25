#> asset:mob/0445.sharkboss/tick/action/puffer1
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/rush2

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/puffer_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 45 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
execute if score @s CD.AnimationTimer matches 45 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 45 run tag @s add CD.Action.Puffer2

execute if score @s CD.AnimationTimer matches 0..10 run tp @s ^ ^ ^0.5
execute if score @s CD.AnimationTimer matches 11..20 run tp @s ^ ^ ^0.3
execute if score @s CD.AnimationTimer matches 21..45 run tp @s ^ ^ ^0.1
