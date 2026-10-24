#> asset:object/1215.miniature_volcano/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1215/register

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
    data modify storage asset:object ID set value 1215
# フィールド(オプション)
    data modify storage asset:object Field.Damage set value 1d
    data modify storage asset:object Field.AdditionalMPHeal set value 1d
    data modify storage asset:object Field.UserID set value -1
    data modify storage asset:object Field.Range set value 60
    data modify storage asset:object Field.Speed set value 2
