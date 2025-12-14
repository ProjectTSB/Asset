#> asset:object/2018.ecual_water_bullet/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2018/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 2018
# フィールド(オプション)
    data modify storage asset:object Field set value {StepPerTick:1,Range:64,MovePerStep:1}
