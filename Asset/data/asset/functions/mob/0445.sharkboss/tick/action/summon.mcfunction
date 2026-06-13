#> asset:mob/0445.sharkboss/tick/action/summon
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#アニメーション制御
    execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/summon/tween {duration:1, to_frame: 0}
    execute if score @s CD.AnimationTimer matches 100 run function asset:mob/0445.sharkboss/tick/action/utility/end
