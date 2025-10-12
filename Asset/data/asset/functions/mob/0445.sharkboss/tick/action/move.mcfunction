#> asset:mob/0445.sharkboss/tick/action/move
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/move_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 16 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..16 run tp @s ^ ^ ^0.4

#軸合わせ
#execute if score @s CD.AnimationTimer matches 0..8 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
execute if score @s CD.AnimationTimer matches 0..16 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
