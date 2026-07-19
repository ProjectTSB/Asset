#> asset:object/1176.arrow_of_yumeori/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1176/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1009
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1176
# フィールド(オプション)
    # data modify storage asset:object Field.Color set value 16646013
    data modify storage asset:object Field.ShowCritParticle set value false
    data modify storage asset:object Field.AttackType set value "Magic"
    data modify storage asset:object Field.ElementType set value "Thunder"
    data modify storage asset:object Field.Range set value 40
    data modify storage asset:object Field.Speed set value 4
    data modify storage asset:object Field.Damage set value 1
    data modify storage asset:object Field.AdditionalMPHeal set value 1

# 何回進んだかを計測する
    data modify storage asset:object Field.StepCount set value 0
