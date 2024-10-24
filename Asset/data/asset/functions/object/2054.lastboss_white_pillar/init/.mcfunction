#> asset:object/2054.lastboss_white_pillar/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2054/init

#> ここでだけ使うInitタグ
# @private
#declare tag 2054.Init

# ユーザーIDをフィールドにいれる
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @p[distance=..64] UserID

# 召喚、上に乗っける
#    summon item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,Tags:["2054.Init"],brightness:{sky:15,block:15},transformation:{left_rotation:[-0.7f,0f,0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,20f,0f],scale:[0f,0f,40f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:20376}}}
#    ride @e[type=item_display,tag=2054.Init,sort=nearest,limit=1] mount @s
#    execute on passengers run tag @s remove 2054.Init

# 地面を探す
    function asset:object/2054.lastboss_white_pillar/init/search_ground
