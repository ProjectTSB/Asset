#> asset:artifact/1048.thunder_storm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1048.thunder_storm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# MP減少率を計算
# 最大MPを取得する
    function api:mp/get_max
    execute store result score $MPMaxValue Temporary run data get storage api: Return.MaxMP
# 使用直前のMPを取得する
    function api:mp/get_current
    execute store result score $MPValue Temporary run data get storage api: Return.CurrentMP

# MP現在量を100倍する
    scoreboard players operation $MPValue Temporary *= $100 Const

# 割る
    scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary
    scoreboard players operation $MPValue Temporary -= $100 Const

# マーカーを持ってくる
    execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    scoreboard players set $T4.Temp Temporary 64
    execute as 0-0-0-0-0 at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision run function asset:artifact/1048.thunder_storm/trigger/3.1.main_loop

# Marker召喚
# MP消費を引き継ぐ
    execute as 0-0-0-0-0 at @s run summon marker ^ ^ ^ {Tags:["T4.Marker","T4.MarkerInit"]}
    scoreboard players operation $T4.Temp Temporary = @s UserID
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run scoreboard players operation @s T4.OwnerID = $T4.Temp Temporary
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run scoreboard players operation @s T4.MPPer = $MPValue Temporary
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run tag @s remove T4.MarkerInit

# スケジュール設定
    schedule function asset:artifact/1048.thunder_storm/trigger/4.schedule 1t

# リセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    scoreboard players reset $T4.Temp Temporary
    scoreboard players reset $MPValue Temporary
    scoreboard players reset $MPMaxValue Temporary
