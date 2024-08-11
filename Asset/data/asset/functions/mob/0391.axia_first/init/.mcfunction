#> asset:mob/0391.axia_first/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0391.axia_first/_/init

# 召喚位置を記録
# （島の位置が変更されるごとにメンテ）
    summon marker ~ ~ ~ {Tags:["AV.Marker.SummonPoint"]}

# スコア初期化
    scoreboard players set @s AV.AnimationTick 0
    scoreboard players set @s AV.AnimationNum 80
    scoreboard players set @s AV.SkillSelect 0

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:axia/summon

# teleport_durationを設定
    execute positioned ~ ~99 ~ as @e[type=item_display,distance=..0.1] run data modify entity @s teleport_duration set value 1
