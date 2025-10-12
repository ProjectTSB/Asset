#> asset:mob/0445.sharkboss/tick/action/tail
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sky_tail/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 65 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.1 ~ ~
execute if score @s CD.AnimationTimer matches 21..42 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s CD.AnimationTimer matches 43..65 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..15 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
