#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
#
# ディメンションソード 偏差撃ち
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/

# 攻撃対象のベクトルを取得
    function api:player_vector/get

# セッション開ける
    function lib:array/session/open

# ベクトルを35倍する
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 35
    function lib:array/math/scalar_multiply

# 別のstorageに移す
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[2]

# セッション閉じる
    function lib:array/session/close

# マクロで偏差撃ちする
    function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict.m with storage asset:temp Predict

# リセット
    data remove storage asset:temp Predict
