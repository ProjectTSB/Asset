#> asset:mob/0391.axia_first/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/391/init

# 召喚位置を記録
# （島の位置が変更されるごとにメンテ）
    summon marker ~ ~ ~ {Tags:["AV.Marker.SummonPoint"]}

# スコア初期化
    scoreboard players set @s AV.AnimationTick 0
    scoreboard players set @s AV.AnimationNum 1000
    scoreboard players set @s AV.FalterCount 0

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:axia/summon {args: {animation: '14_0_opening_attack', start_animation: false}}

# 登場演出時は干渉付加
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# 継承元の処理
    function asset:mob/super.init
