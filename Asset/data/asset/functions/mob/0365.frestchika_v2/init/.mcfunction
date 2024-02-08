#> asset:mob/0365.frestchika_v2/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0365.frestchika_v2/_/init

# 召喚位置を記録
# （島の位置が変更されるごとにメンテ）
    summon marker 195.5 189.5 -185.5 {Tags:["A5.Marker.SummonPoint"]}

# スコア初期化
    scoreboard players set @s A5.AnimationTick 0
    scoreboard players set @s A5.AnimationNum 121
    scoreboard players set @s A5.SkillSelect 0
    scoreboard players set @s A5.HPPer 100
    scoreboard players set @s A5.OverHeat 0

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:frestchika_v2/summon

# teleport_durationを設定
    execute positioned ~ ~99 ~ as @e[type=item_display,distance=..1] run data modify entity @s teleport_duration set value 1