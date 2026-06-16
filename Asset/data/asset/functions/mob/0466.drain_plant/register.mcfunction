#> asset:mob/0466.drain_plant/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/466/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 464
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 466
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# フィールド

# ダメージ
    data modify storage asset:mob Field.Damage set value 30d

# MP吸収量
    # 基礎値
        data modify storage asset:mob Field.MPReduce.Base set value 50
    # 難易度比例部分
        data modify storage asset:mob Field.MPReduce.Difficulty set value 15

# Killerに対してのMP回復
    data modify storage asset:mob Field.MPHealToKiller set value 90
