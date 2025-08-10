#> asset:object/2068.golden_watermelon/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2068/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2068
# フィールド(オプション)
    data modify storage asset:object Field.Rotation set value [0.0f,0.0f]
    data modify storage asset:object Field.StepPerTick set value 3
    data modify storage asset:object Field.Range set value 120
    data modify storage asset:object Field.Slowness set value false
    data modify storage asset:object Field.MovePerStep set value 0.5
