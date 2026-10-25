#> asset:object/2026.lastbattle_platform/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2026/init

#> ここでだけ使うInitタグ
# @private
    #declare tag 2026.Init
    #declare tag 2026.Layer


# 上に自分そっくりのやつを召喚してのっける
    summon item_display ~ ~ ~ {view_range:0.05f,Tags:["2026.Init","2026.Layer"],Rotation:[0F,90F],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:10790052},CustomModelData:20086}}}
    ride @e[type=item_display,tag=2026.Init,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s remove 2026.Init

# 自身にスコア付与
    scoreboard players add $2026.CoreID 2026.CoreID 1
    scoreboard players operation @s 2026.ID = $2026.CoreID 2026.CoreID
