#> asset:mob/0445.sharkboss/tick/action/rush_strong
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_strong/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 66 run function asset:mob/0445.sharkboss/tick/action/utility/end


#モーション系
    execute if score @s CD.AnimationTimer matches 0..1 run tp @s ^-0.3 ^ ^-0.2 ~ ~
    execute if score @s CD.AnimationTimer matches 2..3 run tp @s ^-0.5 ^ ^-0.4 ~ ~
    execute if score @s CD.AnimationTimer matches 4..9 run tp @s ^-0.8 ^ ^-0.7 ~ ~
    execute if score @s CD.AnimationTimer matches 10..11 run tp @s ^-0.3 ^ ^-0.2 ~ ~

    execute if score @s CD.AnimationTimer matches 29..31 run tp @s ^ ^ ^0.2 ~ ~
    execute if score @s CD.AnimationTimer matches 32..35 run tp @s ^ ^ ^0.5 ~ ~
    execute if score @s CD.AnimationTimer matches 36..46 run tp @s ^ ^ ^1.0 ~ ~
    execute if score @s CD.AnimationTimer matches 47..60 run tp @s ^ ^ ^0.5 ~ ~
    execute if score @s CD.AnimationTimer matches 61..66 run tp @s ^ ^ ^0.2 ~ ~

#軸合わせ
    execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal

#演出
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.7
    execute if score @s CD.AnimationTimer matches 15 run playsound minecraft:entity.ravager.death hostile @a ~ ~ ~ 2 1

    execute if score @s CD.AnimationTimer matches 29 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 31 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 0.5
    execute if score @s CD.AnimationTimer matches 32 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 34 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 0.5
    execute if score @s CD.AnimationTimer matches 35 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 37 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 0.5
    execute if score @s CD.AnimationTimer matches 38 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 40 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1 0.5
    execute if score @s CD.AnimationTimer matches 42 run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.6

    execute if score @s CD.AnimationTimer matches 0..11 run particle firework ~ ~1 ~ 0 0 0 0 1

#フグ食
    execute if score @s CD.AnimationTimer matches 29..46 if entity @e[tag=CD.PufferFish,distance=..3] run function asset:mob/0445.sharkboss/tick/action/utility/end
    execute if score @s CD.AnimationTimer matches 29..46 if entity @e[tag=CD.PufferFish,distance=..3] run tag @s add CD.Reserving
    execute if score @s CD.AnimationTimer matches 29..46 if entity @e[tag=CD.PufferFish,distance=..3] run tag @s add CD.Action.Puffer1
    execute if score @s CD.AnimationTimer matches 29..46 if entity @e[tag=CD.PufferFish,distance=..3] run kill @e[tag=CD.PufferFish,sort=nearest,limit=1]

#ダメージ
    execute if score @s CD.AnimationTimer matches 29 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 32 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 35 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 38 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 41 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 44 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
    execute if score @s CD.AnimationTimer matches 47 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush_strong
