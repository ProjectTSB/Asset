#> asset:artifact/1079.allochromatic/trigger/4.search_resonance
#
# 共鳴・紅効果持ちを探す
#
# @within function asset:artifact/1079.allochromatic/trigger/3.main

# 共鳴・紅(ID 228)を検索する
    data modify storage api: Argument.ID set value 228
    function api:entity/mob/effect/get/from_id

# 付与されていたら使用者にTagを付与
    execute if data storage api: Return.Effect run tag @p[tag=this] add Resonance