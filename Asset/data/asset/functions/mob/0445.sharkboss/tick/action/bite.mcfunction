#> asset:mob/0445.sharkboss/tick/action/bite
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/bite/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 50 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.1 ~ ~
execute if score @s CD.AnimationTimer matches 21..35 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s CD.AnimationTimer matches 36..55 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s CD.AnimationTimer matches 46..50 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
