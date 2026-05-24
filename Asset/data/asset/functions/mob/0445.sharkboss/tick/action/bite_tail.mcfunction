#> asset:mob/0445.sharkboss/tick/action/bite_tail
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/bite_tail/tween {duration:1, to_frame: 0}
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

#演出
execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 0.5 2
execute if score @s CD.AnimationTimer matches 23 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.2
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 0.5 1.8
#execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.9
execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.6

execute if score @s CD.AnimationTimer matches 34 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.6
execute if score @s CD.AnimationTimer matches 36 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 1.3
execute if score @s CD.AnimationTimer matches 38 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 1 0.2
#水柱
execute if score @s CD.AnimationTimer matches 38 positioned ^ ^ ^4 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 39 positioned ^ ^ ^5.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 40 positioned ^ ^ ^7 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 41 positioned ^ ^ ^8.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 42 positioned ^ ^ ^10 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 43 positioned ^ ^ ^11.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 44 positioned ^ ^ ^13 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 45 positioned ^ ^ ^14.5 run function asset:mob/0445.sharkboss/vfx/water_column
execute if score @s CD.AnimationTimer matches 46 positioned ^ ^ ^16 run function asset:mob/0445.sharkboss/vfx/water_column
