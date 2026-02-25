#> asset:mob/0445.sharkboss/tick/action/down2
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/down1

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/down_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 72 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
execute if score @s CD.AnimationTimer matches 72 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 72 run tag @s add CD.Action.Down3

execute if score @s CD.AnimationTimer matches 0..10 run tp @s ^ ^ ^-0.2
execute if score @s CD.AnimationTimer matches 11..20 run tp @s ^ ^ ^-0.1
