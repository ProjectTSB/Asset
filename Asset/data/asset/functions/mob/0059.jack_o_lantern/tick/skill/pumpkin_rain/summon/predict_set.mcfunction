#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_set
#
# 偏差でカボチャの雨を降らす
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos

#> Private
# @private
    #declare tag Target

# ターゲット @p

# 攻撃対象にTagを付与
    tag @p add Target

# 攻撃対象のベクトルを取得
    execute as @p[tag=Target] run function api:player_vector/get

# セッション開ける
    function lib:array/session/open

# yベクトルは不要なので削除
    data remove storage api: Return.Vector[1]

# ベクトルを20倍する
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 40
    function lib:array/math/scalar_multiply

# 別のstorageに移す
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[1]

# セッション閉じる
    function lib:array/session/close

# マクロで偏差撃ちする
    execute at @p[tag=Target] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_summon.m with storage asset:temp Predict

# リセット
    tag @p[tag=Target] remove Target
    data remove storage asset:temp Predict
