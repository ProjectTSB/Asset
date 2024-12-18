#> asset:mob/0393.labyria_first/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/393/init

# 召喚位置を記録
# （島の位置が変更されるごとにメンテ）
    summon marker ~ ~ ~ {Tags:["AX.Marker.SummonPoint"]}

# スコア初期化
    scoreboard players set @s AX.AnimationTick 0
    scoreboard players set @s AX.AnimationNum 1000
    scoreboard players set @s AX.FalterCount 0

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:labyria/summon {args:{}}

# 登場演出時は干渉付加
# デバッグ時は無効化
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# 継承元の処理
    function asset:mob/super.init
