#> asset:object/2030.lastboss_stellar_fury/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2030/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2030
# フィールド(オプション)
    data modify storage asset:object Field.StepPerTick set value 2
    data modify storage asset:object Field.Range set value 200
    data modify storage asset:object Field.MovePerStep set value 1
