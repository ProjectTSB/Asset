#> asset:artifact/0916.flame_hunter_clothes/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/916/equip

# 部位数チェック
    data modify storage api: Argument.ID set value 245
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} run function asset:artifact/0916.flame_hunter_clothes/vfx
