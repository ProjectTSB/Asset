#> asset:mob/0402.drown_spellbook/ai/bullet/3.cast
#
# 着弾処理
#
# @within function asset:mob/0402.drown_spellbook/ai/bullet/2.tick


# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:618}
    function api:entity/mob/effect/give
