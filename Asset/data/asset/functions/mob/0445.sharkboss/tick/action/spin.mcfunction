#> asset:mob/0445.sharkboss/tick/action/spin
#
# Mobの行動(噛み付き)
#
# @within function asset:mob/0445.sharkboss/tick/

#アニメーション制御
    execute if score @s CD.AnimationTimer matches 0 as @e[tag=CD.ModelRoot] run function animated_java:sharkboss/animations/tornado/tween {duration:1, to_frame: 0}
    execute if score @s CD.AnimationTimer matches 114 run function asset:mob/0445.sharkboss/tick/action/utility/end

#execute if score @s CD.AnimationTimer matches 45 run summon pig ~ ~ ~ {Tags:["CD.PufferFish"]}

#モーション系
    execute if score @s CD.AnimationTimer matches 0..38 run tp @s ^ ^ ^0.1 ~ ~
    execute if score @s CD.AnimationTimer matches 65..100 run tp @s ^ ^ ^-0.1 ~ ~

#execute if score @s CD.AnimationTimer matches 0 run function asset:mob/0445.sharkboss/vfx/tornado

#軸合わせ
    execute if score @s CD.AnimationTimer matches 0..38 run function asset:mob/0445.sharkboss/tick/action/utility/alignment/normal

#演出
    execute if score @s CD.AnimationTimer matches 0 run playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 0
    #execute if score @s CD.AnimationTimer matches 10 run playsound minecraft:entity.breeze.hurt hostile @a ~ ~ ~ 10 1.3
    execute if score @s CD.AnimationTimer matches 38 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.4
    execute if score @s CD.AnimationTimer matches 43 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.5
    execute if score @s CD.AnimationTimer matches 47 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.6
    execute if score @s CD.AnimationTimer matches 50 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.7
    execute if score @s CD.AnimationTimer matches 52 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.8
    execute if score @s CD.AnimationTimer matches 54 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.9
    execute if score @s CD.AnimationTimer matches 56 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 1
    execute if score @s CD.AnimationTimer matches 58 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 1
    execute if score @s CD.AnimationTimer matches 60 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 4 1.3
    execute if score @s CD.AnimationTimer matches 60 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 10 0.6




    #execute if score @s CD.AnimationTimer matches 60..70 run particle p ~ ~ ~ 3 0 3 8 1 normal

#execute if score @s CD.AnimationTimer matches 60 run summon pig ~ ~10 ~ {Tags:["CD.PufferFish"]}

#ダメージ
    execute if score @s CD.AnimationTimer matches 60 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/damage/spin
#吹っ飛ばし
    #execute if score @s CD.AnimationTimer matches 60 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/utility/launch/horizontal_normal
    #execute if score @s CD.AnimationTimer matches 60 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/utility/launch/horizontal_normal
    #execute if score @s CD.AnimationTimer matches 60 positioned ~ ~ ~ run function asset:mob/0445.sharkboss/tick/action/utility/launch/horizontal_normal


#竜巻召還
    execute if score @s CD.AnimationTimer matches 48 run function asset:mob/0445.sharkboss/vfx/tornado

#フグ召還
    execute if score @s CD.AnimationTimer matches 60 rotated ~ ~ run function asset:mob/0445.sharkboss/vfx/pufferfish
    execute if score @s CD.AnimationTimer matches 60 rotated ~90 ~ run function asset:mob/0445.sharkboss/vfx/pufferfish
    execute if score @s CD.AnimationTimer matches 60 rotated ~-90 ~ run function asset:mob/0445.sharkboss/vfx/pufferfish
    execute if score @s CD.AnimationTimer matches 60 rotated ~180 ~ run function asset:mob/0445.sharkboss/vfx/pufferfish
