#> asset:mob/0445.sharkboss/tick/action/sharknado2
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 80 run function asset:mob/0445.sharkboss/tick/action/utility/end
