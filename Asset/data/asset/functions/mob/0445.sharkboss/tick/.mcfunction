#> asset:mob/0445.sharkboss/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/445/tick

#タイマーを進める
  scoreboard players add @s General.Mob.Tick 1
  scoreboard players add @s CD.AnimationTimer 1
  execute if score @s General.Mob.Tick matches 100 run function asset:mob/0445.sharkboss/tick/skill/bite

  execute if score @s CD.AnimationTimer matches 2 run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 1 1.8
  execute if score @s CD.AnimationTimer matches 26 run playsound minecraft:entity.zombie.break_wooden_door ambient @a ~ ~ ~ 1 1
  execute if score @s CD.AnimationTimer matches 36 run playsound minecraft:entity.player.splash ambient @a ~ ~ ~ 1 1.2
  execute if score @s CD.AnimationTimer matches 38 run playsound minecraft:entity.player.splash.high_speed ambient @a ~ ~ ~ 1 1.2
  execute if score @s CD.AnimationTimer matches 27 run playsound minecraft:entity.breeze.shoot ambient @a ~ ~ ~ 1 2

  execute if score @s CD.AnimationTimer matches 26 run particle minecraft:cloud ^ ^1 ^2 0.5 0.5 0.5 0.5 10 normal
  execute if score @s CD.AnimationTimer matches 38 run particle minecraft:splash ^ ^ ^2 1 1 1 0 100 normal
  execute if score @s CD.AnimationTimer matches 40 run particle minecraft:splash ^ ^ ^2 1 1 1 0 100 normal

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:5436415,Interpolation:10,Tick:28,Scale:[4f,4f]}

# 召喚
    data modify storage api: Argument.ID set value 2113
  execute if score @s CD.AnimationTimer matches 0 positioned ^ ^0.1 ^-0.7 run function api:object/summon
