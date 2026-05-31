#> asset:mob/0445.sharkboss/tick/action/rush3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_end/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 43 run function asset:mob/0445.sharkboss/tick/action/utility/end


#モーション系
execute if score @s CD.AnimationTimer matches 0..10 run tp @s ^ ^ ^0.5
execute if score @s CD.AnimationTimer matches 11..20 run tp @s ^ ^ ^0.3
execute if score @s CD.AnimationTimer matches 21..43 run tp @s ^ ^ ^0.1

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/light

#演出
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.3 0.5
    execute if score @s CD.AnimationTimer matches 4 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.1
    execute if score @s CD.AnimationTimer matches 6 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.5 1.8
    execute if score @s CD.AnimationTimer matches 8 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.6
    execute if score @s CD.AnimationTimer matches 18 run playsound minecraft:entity.dolphin.splash hostile @a ~ ~ ~ 1 0.9
    execute if score @s CD.AnimationTimer matches 0..4 run particle minecraft:block dirt ^ ^ ^0.5 0.6 0.6 0.6 100 30
