#> asset:mob/0445.sharkboss/tick/action/sharknado1
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/select_action/sharknado

#
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 85 run function asset:mob/0445.sharkboss/tick/action/utility/end
