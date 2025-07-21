#> asset:object/2114.heiloang_ehd_fire/tick/attack_player
#
# Objectのtick時の処理
#
# @within asset:object/2114.heiloang_ehd_fire/tick/attack

# 火属性低下が付与されている場合のみダメージ
    data modify storage api: Argument.ID set value 656
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run function api:damage/
