#> asset:object/2001.custom_effect/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2001/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    # data modify storage asset:object IsAbstract set value true
# ID (int)
    data modify storage asset:object ID set value 2001
# フィールド
    data modify storage asset:object Field.Item set value {id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}}
    data modify storage asset:object Field.Scale set value [5f,5f,0.1f]
    data modify storage asset:object Field.Frames set value [20335,20335,20335,20336,20337]
    data modify storage asset:object Field.LockRotation set value false
