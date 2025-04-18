#> asset:object/2115.heiloang_ehd_water/tick/attack_player
#
# Objectのtick時の処理
#
# @within asset:object/2115.heiloang_ehd_water/tick/attack

# 水属性低下が付与されている場合のみダメージ
    data modify storage api: Argument.ID set value 657
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function api:damage/
