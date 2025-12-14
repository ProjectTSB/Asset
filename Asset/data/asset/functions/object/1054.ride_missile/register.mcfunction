#> asset:object/1054.ride_missile/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1054/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1054
# フィールド(オプション)
    data modify storage asset:object Field.UserID set value -1
    data modify storage asset:object Field.DamageForPlayer set value -1
    data modify storage asset:object Field.DamageForEnemy set value -1
    data modify storage asset:object Field.StepPerTick set value 2
    data modify storage asset:object Field.Range set value 128
