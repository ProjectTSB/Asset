#> asset:object/1057.giant_pumpkin/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1057/register

# 継承(オプション)
    data modify storage asset:object Extends append value 2031
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1057
# フィールド(オプション)
    data modify storage asset:object Field.Damage set value {Beginning:1f,Clash:2f}
    data modify storage asset:object Field.StartDelay set value 0
