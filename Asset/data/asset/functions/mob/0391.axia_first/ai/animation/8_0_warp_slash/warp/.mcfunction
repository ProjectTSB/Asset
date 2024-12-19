#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/
#
# 偏差ワープ
#
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/adj

# 攻撃対象にTagを付与
    tag @r[tag=!PlayerShouldInvulnerable,distance=..100] add AV.Temp.Target

# 攻撃対象のベクトルを取得
    execute as @p[tag=AV.Temp.Target,distance=..100] run function api:player_vector/get

# セッション開ける
    function lib:array/session/open

# ベクトルを25倍する
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 25
    function lib:array/math/scalar_multiply

# 別のstorageに移す
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[2]

# セッション閉じる
    function lib:array/session/close

# マクロで偏差撃ちする
    execute as @p[tag=AV.Temp.Target,distance=..100] at @s run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/m with storage asset:temp Predict

# リセット
    tag @p[tag=AV.Temp.Target,distance=..100] remove AV.Temp.Target
    data remove storage asset:temp Predict
