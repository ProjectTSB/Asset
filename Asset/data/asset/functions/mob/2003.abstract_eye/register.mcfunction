#> asset:mob/2003.abstract_eye/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/2003/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2004
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 2003

# 移動速度 (double) (オプション)
# この抽象ではコレが必須！！
# tpする速度として使用する
    data modify storage asset:mob Speed set value 0.1d

# フィールド

# Field.Rotate
# 数値が小さいほど追尾が強い
    data modify storage asset:mob Field.Rotate set value 2000

# Field.Speed
# 移動速度tpミックスインのget_speedメソッドで取得する
    # data modify storage asset:mob Field.Speed set value 0.2

# 仕様書
#
# moveメソッド
# 移動する際のメソッド。
# デフォルトでは壁貫通の無いようににtpする
#
# reflectメソッド
# ブロックに接触した際に、反射するメソッド。
# デフォルトでは壁貫通の起こらないように反射する
#
# rotateメソッド
# 対象となるentityに対して追尾するメソッド
# デフォルトでは近くのプレイヤーに追尾する
