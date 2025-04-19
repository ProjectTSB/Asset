#> asset:artifact/1048.thunder_storm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1048.thunder_storm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# MP減少割合を計算
    # MP割合を取得
        function api:entity/player/get_mp_per
        execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

    # 反転させる
        scoreboard players operation $MPPer Temporary -= $100 Const
        scoreboard players operation $MPPer Temporary *= $-1 Const

# ダメージ計算 Damage = 440 + (減少したMP%) * 4
    scoreboard players add $Damage Temporary 440
    scoreboard players operation $MPPer Temporary *= $4 Const
    scoreboard players operation $Damage Temporary += $MPPer Temporary

# 再帰でMarkerを視点先のブロックの位置まで移動させる
    summon marker ~ ~ ~ {Tags:["T4.Marker"]}
    execute anchored eyes run tp @e[type=marker,tag=T4.Marker,distance=..30,sort=nearest,limit=1] ^ ^ ^ ~ ~
    scoreboard players set $T4.Temp Temporary 64
    execute as @e[type=marker,tag=T4.Marker,distance=..30,sort=nearest,limit=1] at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision run function asset:artifact/1048.thunder_storm/trigger/recursive

# Markerの位置で召喚
    data modify storage api: Argument.ID set value 1044
    execute store result storage api: Argument.FieldOverride.Damage int 1 run scoreboard players get $Damage Temporary
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=marker,tag=T4.Marker,distance=..30,sort=nearest,limit=1] run function api:object/summon

# リセット
    kill @e[type=marker,tag=T4.Marker,distance=..30,sort=nearest,limit=1]
    scoreboard players reset $T4.Temp Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MPPer Temporary
