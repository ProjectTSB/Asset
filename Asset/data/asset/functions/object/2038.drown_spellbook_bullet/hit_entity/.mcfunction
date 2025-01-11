#> asset:object/2038.drown_spellbook_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2038/hit_entity

# 溺れるエフェクト付与
    data modify storage api: Argument set value {ID:618}
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
