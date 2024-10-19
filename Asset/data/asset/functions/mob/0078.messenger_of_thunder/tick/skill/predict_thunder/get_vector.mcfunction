#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/get_vector
#
# 対象のプレイヤーのベクトルを取得する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/

# ターゲットにするプレイヤーにTagを付与
    tag @p add 26.TargetPlayer

# @pのベクトルを取得
    execute as @p[tag=26.TargetPlayer] run function api:player_vector/get

# プレイヤーのベクトルをstorageへ突っ込む
    data modify storage asset:temp Predict.X set from storage api: Return.Vector[0]
    data modify storage asset:temp Predict.Z set from storage api: Return.Vector[2]

# セッション開ける
    function lib:array/session/open

# ベクトルを20倍する
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 22
    function lib:array/math/scalar_multiply

# 別のstorageに移す
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[2]

# セッション閉じる
    function lib:array/session/close

# マクロで偏差撃ちする
    execute at @p[tag=26.TargetPlayer] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point1.m with storage asset:temp Predict

# リセット
    data remove storage asset:temp Predict
    tag @p[tag=26.TargetPlayer] remove 26.TargetPlayer
