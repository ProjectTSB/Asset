#> asset:mob/0445.sharkboss/tick/action/down3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/down2

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/down_end/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 36 run function asset:mob/0445.sharkboss/tick/action/utility/end
