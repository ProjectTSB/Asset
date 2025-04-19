#> asset:object/2116.heiloang_ehd_thunder/tick/attack_player
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/attack

# 雷属性低下が付与されている場合のみダメージ
    data modify storage api: Argument.ID set value 658
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function api:damage/
