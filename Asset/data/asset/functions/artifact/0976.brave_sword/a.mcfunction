#> asset:artifact/0976.brave_sword/a
#
#
#
# @within function asset:object/1179.yumeori_falling_arrow/tick/attack

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick",Count:1b},Color:50175,Frames:[20637,20638,20639],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    function api:object/summon
