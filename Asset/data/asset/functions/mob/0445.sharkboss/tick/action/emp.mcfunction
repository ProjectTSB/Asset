#> asset:mob/0445.sharkboss/tick/action/emp
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/emp/tween {duration:1, to_frame: 0}
execute if score @s CD.AnimationTimer matches 65 run function asset:mob/0445.sharkboss/tick/action/utility/end

#モーション
execute if score @s CD.AnimationTimer matches 0..12 run tp @s ^ ^ ^-0.1

#軸合わせ
execute if score @s CD.AnimationTimer matches 0..20 run function asset:mob/0445.sharkboss/tick/action/utility/alignment

#演出
#execute if score @s CD.AnimationTimer matches 2 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 0.2
#execute if score @s CD.AnimationTimer matches 2 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 0.2
#execute if score @s CD.AnimationTimer matches 8 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 0.8
#execute if score @s CD.AnimationTimer matches 8 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 0.8
#execute if score @s CD.AnimationTimer matches 13 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 1.2
#execute if score @s CD.AnimationTimer matches 13 run playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1.5 1.2
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.7
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.7
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.8
execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 0.8
execute if score @s CD.AnimationTimer matches 25 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1

execute if score @s CD.AnimationTimer matches 25..50 run particle minecraft:flash ~ ~2 ~ 0 0 0 1 1 normal
