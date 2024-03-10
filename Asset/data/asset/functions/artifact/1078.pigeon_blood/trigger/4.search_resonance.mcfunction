#> asset:artifact/1078.pigeon_blood/trigger/4.search_resonance
#
# 共鳴・蒼効果持ちを探す
#
# @within function asset:artifact/1078.pigeon_blood/trigger/3.main

# 共鳴・蒼(ID 229)を検索する
    data modify storage api: Argument.ID set value 229
    function api:entity/mob/effect/get/from_id

# 付与されていたら使用者にTagを付与
    execute if data storage api: Return.Effect run tag @p[tag=this] add Resonance