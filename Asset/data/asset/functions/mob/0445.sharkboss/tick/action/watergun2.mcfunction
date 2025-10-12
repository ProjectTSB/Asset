#> asset:mob/0445.sharkboss/tick/action/bite
#
# Mobの行動(噛み付き)
#
# @within asset:mob/alias/445/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/ground_watergun/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 56 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
tp @s ^0.1 ^ ^-0.05 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..56 run function asset:mob/0445.sharkboss/tick/action/utility/alignment