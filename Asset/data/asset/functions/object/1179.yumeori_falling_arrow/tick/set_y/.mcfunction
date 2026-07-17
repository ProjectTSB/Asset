#> asset:object/1179.yumeori_falling_arrow/tick/set_y/
#
#
#
# @within function asset:object/1179.yumeori_falling_arrow/tick/align_to_ground

# 自身のxzを取得
    data modify storage asset:temp Temp.Pos set from entity @s Pos
    data modify storage asset:temp Temp.X set from storage asset:temp Temp.Pos[0]
    data modify storage asset:temp Temp.Z set from storage asset:temp Temp.Pos[2]
    function asset:object/1179.yumeori_falling_arrow/tick/set_y/set with storage asset:temp Temp

# リセット
    data remove storage asset:temp Temp
