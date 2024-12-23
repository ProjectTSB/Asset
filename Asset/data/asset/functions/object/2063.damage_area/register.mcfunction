#> asset:object/2063.damage_area/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2063/register

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 2063
# フィールド(オプション)
    data modify storage asset:object Field.Color set value 0
    data modify storage asset:object Field.Scale set value [5f,5f,0.01f]
    data modify storage asset:object Field.Tick set value 20
