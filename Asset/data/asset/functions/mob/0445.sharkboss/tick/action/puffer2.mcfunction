#> asset:mob/0445.sharkboss/tick/action/puffer2
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/puffer_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 100 run function asset:mob/0445.sharkboss/tick/action/utility/end
execute if score @s CD.AnimationTimer matches 0 run tag @s add CD.Down
execute if score @s CD.AnimationTimer matches 100 run tag @s remove CD.Down
