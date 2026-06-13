#> asset:mob/0445.sharkboss/tick/action/down3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/down_end/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 176 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション
    execute if score @s CD.AnimationTimer matches 110..113 run tp @s ^0.5 ^ ^0.5

#軸合わせ
#execute if score @s CD.AnimationTimer matches 0..10 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
execute if score @s CD.AnimationTimer matches 156..176 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/light
