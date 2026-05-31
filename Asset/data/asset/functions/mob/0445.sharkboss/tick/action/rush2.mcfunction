#> asset:mob/0445.sharkboss/tick/action/rush2
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_loop/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 12 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
    execute if score @s CD.AnimationTimer matches 12 run tag @s add CD.Reserving
    execute if score @s CD.AnimationTimer matches 12 run tag @s add CD.Action.Rush3

#フグ食
    execute if score @s CD.AnimationTimer matches ..11 if entity @e[tag=CD.PufferFish,distance=..3] run function asset:mob/0445.sharkboss/tick/action/utility/end
    execute if score @s CD.AnimationTimer matches ..11 if entity @e[tag=CD.PufferFish,distance=..3] run tag @s add CD.Reserving
    execute if score @s CD.AnimationTimer matches ..11 if entity @e[tag=CD.PufferFish,distance=..3] run tag @s add CD.Action.Puffer1
    execute if score @s CD.AnimationTimer matches ..11 if entity @e[tag=CD.PufferFish,distance=..3] run kill @e[tag=CD.PufferFish,sort=nearest,limit=1]
# execute if score @s CD.AnimationTimer matches 1 run scoreboard players add @s CD.Counter 1
# execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches ..2 run tag @s add CD.Reserving
# execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches ..2 run tag @s add CD.Action.Reserve.Rush2
# execute if score @s CD.AnimationTimer matches 1 if score @s CD.Counter matches 3.. run tag @s remove CD.Action.Reserve.Rush2

#モーション系
    execute if score @s CD.AnimationTimer matches 0..12 run tp @s ^ ^ ^0.7

#軸合わせ
    execute if score @s CD.AnimationTimer matches 0..12 run function asset:mob/0445.sharkboss/tick/action/utility/alignment_yowai


#演出
    #execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.3 0.5
    execute if score @s CD.AnimationTimer matches 1 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 3 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
    execute if score @s CD.AnimationTimer matches 4 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 6 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
    execute if score @s CD.AnimationTimer matches 7 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8
    execute if score @s CD.AnimationTimer matches 9 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
    execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 3 0.8

    execute if score @s CD.AnimationTimer matches 0..12 run particle minecraft:block dirt ^ ^ ^0.5 0.6 0.6 0.6 100 30

#ダメージ
    execute if score @s CD.AnimationTimer matches 0 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
    execute if score @s CD.AnimationTimer matches 3 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
    execute if score @s CD.AnimationTimer matches 6 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
    execute if score @s CD.AnimationTimer matches 9 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
