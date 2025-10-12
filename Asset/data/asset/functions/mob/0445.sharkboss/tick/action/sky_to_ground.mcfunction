#> asset:mob/0445.sharkboss/tick/action/sky_to_ground
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/
execute if score @s CD.AnimationTimer matches 0 run tag @s remove CD.IsFlying
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sky_to_ground/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 40 run function asset:mob/0445.sharkboss/tick/action/utility/end
