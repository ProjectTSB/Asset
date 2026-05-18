#> asset:mob/0445.sharkboss/tick/action/tail
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/tail/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 65 run function asset:mob/0445.sharkboss/tick/action/utility/end

#演出
execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.hoglin.angry hostile @a ~ ~ ~ 0.5 0.7
execute if score @s CD.AnimationTimer matches 28 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.6
execute if score @s CD.AnimationTimer matches 30 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.3
execute if score @s CD.AnimationTimer matches 32 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 0.2


#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.1 ~ ~
execute if score @s CD.AnimationTimer matches 21..42 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s CD.AnimationTimer matches 43..65 run tp @s ^ ^ ^0.1 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..15 run function asset:mob/0445.sharkboss/tick/action/utility/alignment

#水柱
execute if score @s CD.AnimationTimer matches 32 positioned ^ ^ ^4 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 33 positioned ^ ^ ^5.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 34 positioned ^ ^ ^7 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 35 positioned ^ ^ ^8.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 36 positioned ^ ^ ^10 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 37 positioned ^ ^ ^11.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 38 positioned ^ ^ ^13 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 39 positioned ^ ^ ^14.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 40 positioned ^ ^ ^16 run function asset:mob/0445.sharkboss/vfx/water_column
