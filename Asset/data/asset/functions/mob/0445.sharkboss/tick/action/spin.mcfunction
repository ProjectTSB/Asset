#> asset:mob/0445.sharkboss/tick/action/bite
#
# Mobの行動(噛み付き)
#
# @within asset:mob/alias/445/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sky_spin/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 76 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 60..76 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
#execute if score @s CD.AnimationTimer matches 65..83 run function asset:mob/0445.sharkboss/tick/action/utility/alignment