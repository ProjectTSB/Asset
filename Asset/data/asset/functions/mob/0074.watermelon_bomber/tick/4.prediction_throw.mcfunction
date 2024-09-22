#> asset:mob/0074.watermelon_bomber/tick/4.prediction_throw
#
# 偏差で投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.throw

# ターゲット @p

# 対象のベクトルを取得
    execute as @p run function api:player_vector/get
    data modify storage asset:temp Predict.X set from storage api: Return.Vector[0]
    data modify storage asset:temp Predict.Z set from storage api: Return.Vector[2]

# 自身の弾速を設定
    scoreboard players set $Speed Temporary 0

# 自身の到達範囲を設定
    data modify storage asset:temp Predict.ReachableRange set value 1

# 偏差位置を割り出す
    execute at @p run function asset:mob/0074.watermelon_bomber/tick/5.prediction_aim.m with storage asset:temp Predict

# スイカを召喚する
    data modify storage api: Argument.ID set value 75
    execute anchored eyes positioned ^-0.6 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon

# スイカを予測位置マーカーの方向に投げる
# 予測位置マーカーが存在しない場合、直接プレイヤーに投げる
    execute if entity @e[type=marker,tag=PredictionMarker,distance=..30,limit=1] positioned ~ ~1000 ~ as @e[type=block_display,scores={MobID=75},distance=..5,limit=1] at @s positioned ~ ~-1000 ~ facing entity @e[type=marker,tag=PredictionMarker,distance=..30,limit=1] eyes run tp @s ~ ~ ~ ~ ~-2
    execute unless entity @e[type=marker,tag=PredictionMarker,distance=..30,limit=1] positioned ~ ~1000 ~ as @e[type=block_display,scores={MobID=75},distance=..5,limit=1] at @s positioned ~ ~-1000 ~ facing entity @p eyes run tp @s ~ ~ ~ ~ ~-2

# リセット
    scoreboard players reset $Recursive Temporary
    scoreboard players reset $Speed Temporary
    data remove storage asset:temp Predict
    kill @e[type=marker,tag=PredictionMarker,distance=..30]
