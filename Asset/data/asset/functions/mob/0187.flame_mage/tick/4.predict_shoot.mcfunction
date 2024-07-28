#> asset:mob/0187.flame_mage/tick/4.predict_shoot
#
# 偏差撃ち
#
# @within function asset:mob/0187.flame_mage/tick/2.shoot_magic

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
    execute at @p run function asset:mob/0187.flame_mage/tick/5.prediction_aim.m with storage asset:temp Predict

# 予測位置マーカーの方向に撃つ
# 予測位置マーカーが存在しない場合、直接プレイヤーを狙う
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute if entity @e[type=marker,tag=PredictionMarker,distance=..40,limit=1] anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @e[type=marker,tag=PredictionMarker,distance=..40,limit=1] eyes
    execute unless entity @e[type=marker,tag=PredictionMarker,distance=..40,limit=1] anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[distance=..20] eyes
    execute anchored eyes positioned ^-0.25 ^ ^ run tag @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] add 57.Already


# リセット
    scoreboard players reset $Recursive Temporary
    scoreboard players reset $Speed Temporary
    data remove storage asset:temp Predict
    kill @e[type=marker,tag=PredictionMarker,distance=..40]
