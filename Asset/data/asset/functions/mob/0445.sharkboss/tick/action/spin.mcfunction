#> asset:mob/0445.sharkboss/tick/action/spin
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/tornado/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 95 run function asset:mob/0445.sharkboss/tick/action/utility/end

#execute if score @s CD.AnimationTimer matches 45 run summon pig ~ ~ ~ {Tags:["CD.PufferFish"]}

#モーション系
execute if score @s CD.AnimationTimer matches 60..95 run tp @s ^ ^ ^-0.1 ~ ~

#軸合わせ
#execute if score @s CD.AnimationTimer matches 65..83 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
