#> asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/1.summon
#
# ディスプレイ召喚
#
# @within function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# Displayを召喚する
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run summon item_display ~16 ~2 ~ {Tags:["9H.Final.Display.Bullet"],teleport_duration:1,item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.2f]}}
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run summon item_display ~ ~2 ~16 {Tags:["9H.Final.Display.Bullet"],teleport_duration:1,item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.2f]}}
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run summon item_display ~-16 ~2 ~ {Tags:["9H.Final.Display.Bullet"],teleport_duration:1,item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.2f]}}
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run summon item_display ~ ~2 ~-16 {Tags:["9H.Final.Display.Bullet"],teleport_duration:1,item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16753152,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.2f]}}
# サウンド
    playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 2 2 0
# 向きを合わせる
    execute as @e[type=item_display,tag=9H.Final.Display.Bullet,distance=..64] at @s facing entity @e[type=marker,tag=9H.Marker.SummonPoint,distance=..32,limit=1] feet run tp @s ^ ^ ^ ~ ~