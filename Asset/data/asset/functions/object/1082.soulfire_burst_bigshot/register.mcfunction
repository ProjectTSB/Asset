#> asset:object/1082.soulfire_burst_bigshot/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1082/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1082
# フィールド(オプション)
    data modify storage asset:object Field.StepPerTick set value 2
    data modify storage asset:object Field.Range set value 14
    # data modify storage asset:object Field.AdditionalMPHeal set value
