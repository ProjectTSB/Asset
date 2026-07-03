#> asset:mob/2004.movement_speed_tp_mixin/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/2004/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 2004
# 移動速度 (double) (オプション)
    # data modify storage asset:mob Speed set value

# フィールド
    # data modify storage asset:mob Field.Speed set value

# 仕様書
#
# tpで移動するMobが継承することを想定しているミックスイン
# 存在意義は「tpで移動するMobにも鈍足デバフが適用されるように」
# attributeのmovement_speedを設定し、それの値だけ1tickに前方に進む
#
# get_speedメソッド
# そのtickの移動量をmovement_speedから取得するメソッド
# this.Speedに値が設定される
# movement_speedはマイナスに対応していないので、後ろに移動したい場合は各自でマイナスにする必要がある
#
# moveメソッド
# get_speedメソッドで取得した値だけ前方に進むメソッド
# デフォルトでは何も壁貫通対策などしていないので、必要なら各自で実装しよう
