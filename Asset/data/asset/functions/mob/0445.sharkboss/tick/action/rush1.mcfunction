#> asset:mob/0445.sharkboss/tick/action/rush1
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 1 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 1 run tag @s add CD.Action.Reserve.Rush2
execute if score @s CD.AnimationTimer matches 1 run scoreboard players set @s CD.Counter 0
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/ground_rush_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 30 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..13 run tp @s ^ ^ ^-0.2
execute if score @s CD.AnimationTimer matches 14..18 run tp @s ^ ^ ^-0.5
execute if score @s CD.AnimationTimer matches 19..25 run tp @s ^ ^ ^0.2
execute if score @s CD.AnimationTimer matches 26..30 run tp @s ^ ^ ^0.7

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..30 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
