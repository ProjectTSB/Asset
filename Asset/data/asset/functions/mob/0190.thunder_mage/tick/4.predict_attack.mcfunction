#> asset:mob/0190.thunder_mage/tick/4.predict_attack
#
# 偏差攻撃
#
# @within function asset:mob/0190.thunder_mage/tick/3.attack

#> Private
# @private
    #declare tag Target

# 攻撃対象にTagを付与
    tag @r[distance=..15] add Target

# 攻撃対象のベクトルを取得
    execute as @p[tag=Target] run function api:player_vector/get

# セッション開ける
    function lib:array/session/open

# ベクトルを20倍する
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 20
    function lib:array/math/scalar_multiply

# 別のstorageに移す
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[2]

# セッション閉じる
    function lib:array/session/close

# マクロで偏差撃ちする
    execute at @p[tag=Target] run function asset:mob/0190.thunder_mage/tick/5.predict.m with storage asset:temp Predict

# リセット
    tag @p[tag=Target] remove Target
    data remove storage asset:temp Predict
