#> asset:artifact/1065.magic_bullet/trigger/summon_square.m
#
# 魔法陣の召喚処理
#
# @input args:
#
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/3.main
#   asset:artifact/1065.magic_bullet/trigger/aim_to_player

# 魔法陣を召喚
    data modify storage api: Argument.ID set value 1045
    $data modify storage api: Argument.FieldOverride.Scale set value $(Scale)
    $data modify storage api: Argument.FieldOverride.Delay set value $(Delay)
    function api:object/summon
