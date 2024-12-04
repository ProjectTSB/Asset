#> asset:artifact/0714.deep_sea_coral_boots/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/714/equip

# 他部位の情報を取る
    data modify storage api: Argument.ID set value 240
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} run particle dust 1 0.549 1 0.75 ~ ~0.2 ~ 0.4 0.2 0.4 0 50 normal
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~0.3 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/vfx
    execute unless data storage api: Return.Effect{Stack:4} run playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2
