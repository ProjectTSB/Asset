#> asset:mob/0445.sharkboss/tick/action/sharknado3
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

#
    execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/sharknado_end/tween {duration:1, to_frame: 0}
    execute if score @s CD.AnimationTimer matches 120 run function asset:mob/0445.sharkboss/tick/action/utility/end

    execute if score @s CD.AnimationTimer matches 0 run weather clear
    #execute if score @s CD.AnimationTimer matches 120 run weather clear

    scoreboard players set @s CD.ElectrifiedActionCounter 0
    tag @s remove CD.Electrified
    tag @s remove CD.Charging

    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 3 0
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 2
    execute if score @s CD.AnimationTimer matches 1 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 0.6
    #execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.breeze.hurt hostile @a ~ ~ ~ 10 1.3
    execute if score @s CD.AnimationTimer matches 33 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.4
    execute if score @s CD.AnimationTimer matches 34 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.6
    execute if score @s CD.AnimationTimer matches 35 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.8
    execute if score @s CD.AnimationTimer matches 36 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 1
    execute if score @s CD.AnimationTimer matches 37 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 1
    execute if score @s CD.AnimationTimer matches 2 run playsound minecraft:block.portal.trigger hostile @a ~ ~ ~ 2 2
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 2 1

    #execute if score @s CD.AnimationTimer matches 52 run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 52 run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 51 run playsound minecraft:entity.minecart.riding hostile @a ~ ~ ~ 3 0.3
    execute if score @s CD.AnimationTimer matches 52 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 0

    execute if score @s CD.AnimationTimer matches 52..55 run playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 45 run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 3 1


    execute if score @s CD.AnimationTimer matches 58 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 61 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 64 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 67 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 70 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 76 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 3 1
    execute if score @s CD.AnimationTimer matches 76 run playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.8

    execute if score @s CD.AnimationTimer matches 50 run function asset:mob/0445.sharkboss/vfx/sharknado
    #execute if score @s CD.AnimationTimer matches 52 positioned ~50 ~ ~50 run summon lightning_bolt
    #execute if score @s CD.AnimationTimer matches 52 positioned ~50 ~ ~-50 run summon lightning_bolt
    #execute if score @s CD.AnimationTimer matches 52 positioned ~-50 ~ ~50 run summon lightning_bolt
    #execute if score @s CD.AnimationTimer matches 52 positioned ~-50 ~ ~-50 run summon lightning_bolt

# サメ召還
    execute if score @s CD.AnimationTimer matches 50..70 positioned ~ ~20 ~ rotated ~ ~90 run function asset:mob/0445.sharkboss/vfx/shark
    #execute if score @s CD.AnimationTimer matches 20 rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    #execute if score @s CD.AnimationTimer matches 40 rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark
    #execute if score @s CD.AnimationTimer matches 60 rotated ~ ~-90 run function asset:mob/0445.sharkboss/vfx/shark

#ダメージ
    execute if score @s CD.AnimationTimer matches 59 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado_multi
    execute if score @s CD.AnimationTimer matches 62 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado_multi
    execute if score @s CD.AnimationTimer matches 65 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado_multi
    execute if score @s CD.AnimationTimer matches 68 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado_multi
    execute if score @s CD.AnimationTimer matches 71 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado_multi
    execute if score @s CD.AnimationTimer matches 77 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/sharknado

#メッセージ
    execute if score @s CD.AnimationTimer matches 0 run say サメのチャージが完了した！
    execute if score @s CD.AnimationTimer matches 87 run say サメのロレンチーニ器官が鎮静化した
