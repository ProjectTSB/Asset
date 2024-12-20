#> asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/1.summon
#
# Displayを召喚する
#
# @within function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/

# Displayを召喚する
    execute at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..16] run summon item_display ~ ~-1 ~ {Tags:["9H.Final.Display"],item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:9371648,CustomModelData:20343}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0.05f,0f],scale:[0f,0.2f,0f]}}
# サウンド
    playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 2 2 0