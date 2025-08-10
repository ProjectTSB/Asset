#> asset:object/1074.arrow_of_approaching/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1074/register

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
    data modify storage asset:object ID set value 1074
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 6710886
    data modify storage asset:object Field.StepPerTick set value 2
    data modify storage asset:object Field.ShowCritParticle set value false
    data modify storage asset:object Field.Range set value 64
    # data modify storage asset:object Field.UserID set value
