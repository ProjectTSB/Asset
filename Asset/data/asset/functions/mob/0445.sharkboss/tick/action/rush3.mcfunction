#> asset:mob/0445.sharkboss/tick/action/rush3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/rush2

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_end/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 43 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..10 run tp @s ^ ^ ^0.5
execute if score @s CD.AnimationTimer matches 11..20 run tp @s ^ ^ ^0.3
execute if score @s CD.AnimationTimer matches 21..43 run tp @s ^ ^ ^0.1

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment_yowai
