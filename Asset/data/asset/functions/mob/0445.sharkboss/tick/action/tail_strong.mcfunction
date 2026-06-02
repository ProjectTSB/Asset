#> asset:mob/0445.sharkboss/tick/action/tail_strong
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/tail_strong/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 55 run function asset:mob/0445.sharkboss/tick/action/utility/end

#演出
execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.hoglin.angry hostile @a ~ ~ ~ 1.5 0.7
execute if score @s CD.AnimationTimer matches 28 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.6
execute if score @s CD.AnimationTimer matches 30 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 2 1.3
execute if score @s CD.AnimationTimer matches 32 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 2 0.2


#モーション系
execute if score @s CD.AnimationTimer matches 0..10 run tp @s ^ ^ ^-0.3 ~ ~
execute if score @s CD.AnimationTimer matches 11..20 run tp @s ^ ^ ^-0.2 ~ ~
execute if score @s CD.AnimationTimer matches 21..32 run tp @s ^ ^ ^-0.05 ~ ~
execute if score @s CD.AnimationTimer matches 33..40 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s CD.AnimationTimer matches 41..55 run tp @s ^ ^ ^0.2 ~ ~

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..26 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal

#水柱
execute if score @s CD.AnimationTimer matches 32 positioned ^ ^ ^4 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 33 positioned ^ ^ ^6 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 34 positioned ^ ^ ^8 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 35 positioned ^ ^ ^10 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 36 positioned ^ ^ ^12 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 37 positioned ^ ^ ^14 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 38 positioned ^ ^ ^16 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 39 positioned ^ ^ ^18 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 40 positioned ^ ^ ^20 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 41 positioned ^ ^ ^22 run function asset:mob/0445.sharkboss/vfx/water_column

execute if score @s CD.AnimationTimer matches 32 positioned ^2 ^ ^4 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 33 positioned ^2.5 ^ ^6 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 34 positioned ^3 ^ ^8 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 35 positioned ^3.5 ^ ^10 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 36 positioned ^4 ^ ^12 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 37 positioned ^4.5 ^ ^14 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 38 positioned ^5 ^ ^16 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 39 positioned ^5.5 ^ ^18 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 40 positioned ^6 ^ ^20 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 41 positioned ^6.5 ^ ^22 run function asset:mob/0445.sharkboss/vfx/water_column

execute if score @s CD.AnimationTimer matches 32 positioned ^-2 ^ ^4 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 33 positioned ^-2.5 ^ ^6 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 34 positioned ^-3 ^ ^8 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 35 positioned ^-3.5 ^ ^10 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 36 positioned ^-4 ^ ^12 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 37 positioned ^-4.5 ^ ^14 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 38 positioned ^-5 ^ ^16 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 39 positioned ^-5.5 ^ ^18 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 40 positioned ^-6 ^ ^20 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 41 positioned ^-6.5 ^ ^22 run function asset:mob/0445.sharkboss/vfx/water_column

execute if score @s CD.AnimationTimer matches 20 run function asset:mob/0445.sharkboss/tick/action/damage/tail_strong
