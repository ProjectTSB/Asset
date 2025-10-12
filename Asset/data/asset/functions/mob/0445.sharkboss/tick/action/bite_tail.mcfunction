#> asset:mob/0445.sharkboss/tick/action/bite
#
# Mobの行動(噛み付き)
#
# @within asset:mob/alias/445/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sky_bite_tail/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 75 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション系
execute if score @s CD.AnimationTimer matches 0..5 run tp @s ^ ^ ^-0.2 ~ ~
execute if score @s CD.AnimationTimer matches 6..10 run tp @s ^ ^ ^-0.4 ~ ~
execute if score @s CD.AnimationTimer matches 11..15 run tp @s ^ ^ ^-0.2 ~ ~
execute if score @s CD.AnimationTimer matches 16..25 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s CD.AnimationTimer matches 30..35 run tp @s ^ ^ ^-0.2 ~ ~
execute if score @s CD.AnimationTimer matches 38..40 run tp @s ^ ^ ^-0.3 ~ ~
execute if score @s CD.AnimationTimer matches 41..46 run tp @s ^ ^ ^-0.1 ~ ~
execute if score @s CD.AnimationTimer matches 61..75 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
#execute if score @s CD.AnimationTimer matches 0..10 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
execute if score @s CD.AnimationTimer matches 0..10 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
execute if score @s CD.AnimationTimer matches 24..28 run function asset:mob/0445.sharkboss/tick/action/utility/alignment
#execute if score @s CD.AnimationTimer matches 26..30 run function asset:mob/0445.sharkboss/tick/action/utility/alignment