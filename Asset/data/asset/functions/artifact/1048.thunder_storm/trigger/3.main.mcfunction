#> asset:artifact/1048.thunder_storm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1048.thunder_storm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# MP減少割合を計算
    # 最大MPを取得する
        function api:mp/get_max
        execute store result score $MPMaxValue Temporary run data get storage api: Return.MaxMP
    # 使用直前のMPを取得する
        function api:mp/get_current
        execute store result score $MPValue Temporary run data get storage api: Return.CurrentMP

    # 現MPの割合算出
        scoreboard players operation $MPValue Temporary *= $100 Const
        scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary

    # 反転させる
        scoreboard players operation $MPValue Temporary -= $100 Const
        scoreboard players operation $MPValue Temporary *= $-1 Const

# ダメージ計算 Damage = 340 + (1 - MP割合) * 3
    scoreboard players add $Damage Temporary 340
    scoreboard players operation $MPValue Temporary *= $3 Const
    scoreboard players operation $Damage Temporary += $MPValue Temporary

# 再帰でMarkerを視点先のブロックの位置まで移動させる
    execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    scoreboard players set $T4.Temp Temporary 64
    execute as 0-0-0-0-0 at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision run function asset:artifact/1048.thunder_storm/trigger/recursive

# Markerの位置で召喚
    data modify storage api: Argument.ID set value 1044
    execute store result storage api: Argument.FieldOverride.Damage int 1 run scoreboard players get $Damage Temporary
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned as 0-0-0-0-0 run function api:object/summon

# リセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    scoreboard players reset $T4.Temp Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MPValue Temporary
    scoreboard players reset $MPMaxValue Temporary
