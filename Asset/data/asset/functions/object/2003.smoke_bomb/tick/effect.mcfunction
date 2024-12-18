#> asset:object/2003.smoke_bomb/tick/effect
#
# 暗闇エフェクト付与
#
# @within function asset:object/2003.smoke_bomb/tick/cast

# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:124,Duration:150}
    function api:entity/mob/effect/give
