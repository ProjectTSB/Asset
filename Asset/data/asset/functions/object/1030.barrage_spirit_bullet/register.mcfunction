#> asset:object/1030.barrage_spirit_bullet/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1030/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1030
# フィールド(オプション)
    data modify storage asset:object Field.Speed set value 2
    data modify storage asset:object Field.Range set value 60
    data modify storage asset:object Field.MovePerStep set value 0.5
    data modify storage asset:object Field.Damage set value {Min:1,Max:10}
    data modify storage asset:object Field.UserID set value -1
