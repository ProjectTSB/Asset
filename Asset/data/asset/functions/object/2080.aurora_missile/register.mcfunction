#> asset:object/2080.aurora_missile/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2080/register

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
    data modify storage asset:object ID set value 2080
# フィールド(オプション)

# 飛翔体抽象に必要なデータ
    data modify storage asset:object Field.Speed set value 1
    data modify storage asset:object Field.Range set value 50
    data modify storage asset:object Field.MovePerStep set value 0.5

# 回転関係
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.SpinInterval._ set value 0
    data modify storage asset:object Field.SpinInterval.Max set value 4
