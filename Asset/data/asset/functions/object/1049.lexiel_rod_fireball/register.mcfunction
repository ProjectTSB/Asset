#> asset:object/1049.lexiel_rod_fireball/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1049/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1049
# フィールド(オプション)
    data modify storage asset:object Field.StepPerTick set value 2
    data modify storage asset:object Field.Range set value 32
    data modify storage asset:object Field.HomingDelay set value 5
    # data modify storage asset:object Field.Damage set value
    # data modify storage asset:object Field.UserID set value
