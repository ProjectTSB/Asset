#> asset:mob/0445.sharkboss/tick/action/rush2
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 1 run tag @s add CD.IsFlying
execute if score @s CD.AnimationTimer matches 1 run scoreboard players add @s CD.Counter 1
execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches ..2 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches ..2 run tag @s add CD.Action.Reserve.Rush2
execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches 3.. run tag @s remove CD.Action.Reserve.Rush2

#モーション系
execute if score @s CD.AnimationTimer matches 0..6 run tp @s ^ ^ ^0.7

#軸合わせ
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/ground_rush_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 6 run function asset:mob/0445.sharkboss/tick/action/utility/end
