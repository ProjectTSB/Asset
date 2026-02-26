#> asset:mob/0445.sharkboss/tick/action/emp
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/emp/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 65 run function asset:mob/0445.sharkboss/tick/action/utility/end

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
