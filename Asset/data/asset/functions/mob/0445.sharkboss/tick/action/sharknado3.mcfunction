#> asset:mob/0445.sharkboss/tick/action/sharknado3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#
    execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_end/tween {duration:1, to_frame: 0}
    execute if score @s CD.AnimationTimer matches 45 run function asset:mob/0445.sharkboss/tick/action/utility/end

    scoreboard players set @s CD.ElectrifiedActionCounter 0
    tag @s remove CD.Electrified
    tag @s remove CD.Charging

    execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.minecart.riding hostile @a ~ ~ ~ 3 0.3
    execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 0
    execute if score @s CD.AnimationTimer matches 3 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1

    execute if score @s CD.AnimationTimer matches 2 run function asset:mob/0445.sharkboss/vfx/sharknado

#ダメージ
    execute if score @s CD.AnimationTimer matches 10 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado


    execute if score @s CD.AnimationTimer matches 44 run say サメのロレンチーニ器官が鎮静化した
