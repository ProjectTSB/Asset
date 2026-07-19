#> asset:object/1180.yumeori_vfx/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1180/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1180
# フィールド(オプション)
    data modify storage asset:object Field.Color set value "Yellow"
#
    data modify storage asset:object Field.Scale set value [8f,8f,8f]
    data modify storage asset:object Field.List set value []
    data modify storage asset:object Field.CharList.Yellow set value ["a","9","8","7","6","5","4","3","1"]
    data modify storage asset:object Field.CharList.Pink set value ["l","k","j","i","h","g","f","e","c"]
    data modify storage asset:object Field.CharList.Red set value ["w","v","u","t","s","r","q","p","n"]
