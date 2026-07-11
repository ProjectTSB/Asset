#> asset:mob/0463.nectar_plant/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/463/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 461
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 462
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 3900
# フィールド
# ダメージ
    data modify storage asset:mob Field.Damage set value 35d

# 攻撃での回復量
    data modify storage asset:mob Field.Heal set value 1000d

# 死亡時のKillerに対する回復量
    data modify storage asset:mob Field.HealToKiller set value 30

# 攻撃予告発生から攻撃判定発生まで
    data modify storage asset:mob Field.Delay set value 48
