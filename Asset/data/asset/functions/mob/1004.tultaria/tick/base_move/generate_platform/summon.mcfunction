#> asset:mob/1004.tultaria/tick/base_move/generate_platform/summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/generate_platform/

# 召喚
    data modify storage api: Argument.ID set value 2026
    function api:object/summon

# 足場生成
    fill ~2 ~-1 ~2 ~-2 ~-5 ~-2 barrier
