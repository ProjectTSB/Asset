#> asset:mob/0445.sharkboss/tick/action/watergun1
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/watergun/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 73 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..73 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
