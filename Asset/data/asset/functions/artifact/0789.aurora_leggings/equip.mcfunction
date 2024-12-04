#> asset:artifact/0789.aurora_leggings/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/789/equip

# 部位数チェック
    data modify storage api: Argument.ID set value 244
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} rotated ~ 0 positioned ~ ~0.5 ~ run function asset:artifact/0789.aurora_leggings/vfx
    execute unless data storage api: Return.Effect{Stack:4} run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 2 0
    execute unless data storage api: Return.Effect{Stack:4} run playsound block.beacon.activate player @a ~ ~ ~ 0.5 2 0
