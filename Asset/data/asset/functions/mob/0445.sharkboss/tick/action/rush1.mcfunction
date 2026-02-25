#> asset:mob/0445.sharkboss/tick/action/rush1
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

# execute if score @s CD.AnimationTimer matches 1 run scoreboard players set @s CD.Counter 0
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 50 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
execute if score @s CD.AnimationTimer matches 50 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 50 run tag @s add CD.Action.Rush2

#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.2
execute if score @s CD.AnimationTimer matches 40..50 run tp @s ^ ^ ^0.7

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
execute if score @s CD.AnimationTimer matches 40..50 run function asset:mob/0445.sharkboss/tick/action/utility/alignment_yowai
