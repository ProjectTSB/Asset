#> asset:object/2168.general_long_laser/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2168/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2168
# フィールド(オプション)
    # 変えるべからず
        data modify storage asset:object Field.LeftRotation set value {axis:[1f,0f,0f],angle:0}
        data modify storage asset:object Field.RightRotation set value {axis:[0f,-1f,0f],angle:0}
    # 見た目に使うCustomModelData(革の馬鎧。また、使うモデルはなんでもいいわけではない)
        data modify storage asset:object Field.CustomModelData set value 20381
    # 色(10進数)
        data modify storage asset:object Field.Color set value 16777215
    # サイズ(横の太さ、長さ、縦の太さ)
        data modify storage asset:object Field.Scale set value [3f,40f,3f]
    # 出現にかかる時間
        data modify storage asset:object Field.AppearInterpolation set value 2
    # 何Tick後に消失に向かうか
        data modify storage asset:object Field.DisappearTick set value 2
    # 縮小にかかる時間
        data modify storage asset:object Field.DisappearInterpolation set value 2
    # 存在時間(上記とは別、こちらは単純に指定されたTick分だけ残る)
        data modify storage asset:object Field.LifeTime set value 20
