#> asset:object/1112.school_of_fish/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1112/register

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
    data modify storage asset:object ID set value 1112
# フィールド(オプション)
    data modify storage asset:object Field.Interval set value 2
    data modify storage asset:object Field.FishCount set value 8
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.AdditionalMPHeal set value 1
    data modify storage asset:object Field.UserID set value -1
