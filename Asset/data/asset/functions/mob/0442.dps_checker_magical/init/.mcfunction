#> asset:mob/0442.dps_checker_magical/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/442/init

#> Private
# @private
    #declare tag Init

# テキストを召喚、自分の上に乗せる
    summon text_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],billboard:"center",shadow:1b,brightness:{sky:15,block:15},text:'[{"text":"DPS: "},{"text":"Waiting...","underlined":true}]',background:16711680}
    ride @e[type=text_display,tag=Init,limit=1] mount @s
    tag @e[type=text_display,tag=Init,limit=1] remove Init

# モデルを、自分の上に乗せる
    summon item_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.12f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:20562,display:{color:6102174}}}}
    tp @e[type=item_display,tag=Init,limit=1] ~ ~ ~ ~ ~
    ride @e[type=item_display,tag=Init,limit=1] mount @s
    tag @e[type=item_display,tag=Init,limit=1] remove Init

# 演出
    particle poof ~ ~1 ~ 0.2 0.5 0.2 0.05 25 force @a[distance=..32]
    playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
