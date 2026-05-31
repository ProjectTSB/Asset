#> asset:mob/0445.sharkboss/tick/action/rush1
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

# execute if score @s CD.AnimationTimer matches 1 run scoreboard players set @s CD.Counter 0
execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/rush_start/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 50 run function asset:mob/0445.sharkboss/tick/action/utility/end

#次のモーションを予約
execute if score @s CD.AnimationTimer matches 50 run tag @s add CD.Reserving
execute if score @s CD.AnimationTimer matches 50 run tag @s add CD.Action.Rush2

#モーション系
execute if score @s CD.AnimationTimer matches 0..20 run tp @s ^ ^ ^-0.2
execute if score @s CD.AnimationTimer matches 40..50 run tp @s ^ ^ ^0.7

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal
execute if score @s CD.AnimationTimer matches 40..50 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/light

#演出
execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.dolphin.splash hostile @a ~ ~ ~ 1 0.9
execute if score @s CD.AnimationTimer matches 20 run playsound minecraft:entity.ravager.death hostile @a ~ ~ ~ 1 1
execute if score @s CD.AnimationTimer matches 40 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
execute if score @s CD.AnimationTimer matches 41 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 2 0.8
execute if score @s CD.AnimationTimer matches 43 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
execute if score @s CD.AnimationTimer matches 44 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 2 0.8
execute if score @s CD.AnimationTimer matches 46 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
execute if score @s CD.AnimationTimer matches 47 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 2 0.8
execute if score @s CD.AnimationTimer matches 49 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 0.1 0.5
execute if score @s CD.AnimationTimer matches 50 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 2 0.8

execute if score @s CD.AnimationTimer matches 41..47 run particle minecraft:block dirt ^ ^ ^0.5 0.6 0.6 0.6 100 30

execute if score @s CD.AnimationTimer matches 44 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
execute if score @s CD.AnimationTimer matches 47 positioned ^ ^ ^2.5 run function asset:mob/0445.sharkboss/tick/action/damage/rush
