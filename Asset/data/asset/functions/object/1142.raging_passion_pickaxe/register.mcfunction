#> asset:object/1142.raging_passion_pickaxe/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1142/register

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
    data modify storage asset:object ID set value 1142
# フィールド(オプション)
    data modify storage asset:object Field.StepPerTick set value 1
    data modify storage asset:object Field.Range set value 125
    data modify storage asset:object Field.MovePerStep set value 0.16
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.SpinInterval set value 4
    data modify storage asset:object Field.DamageInterval set value 2
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.AdditionalMPHeal set value 1
    data modify storage asset:object Field.UserID set value -1
