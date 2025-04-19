#> asset:object/2025.darkness_spellbook_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2025/hit_entity

# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:74,Duration:100}
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
