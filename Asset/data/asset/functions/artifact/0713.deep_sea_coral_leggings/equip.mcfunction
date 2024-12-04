#> asset:artifact/0713.deep_sea_coral_leggings/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/713/equip

# 他部位の情報を取る
    data modify storage api: Argument.ID set value 240
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} run particle dust 0.686 0.49 1 0.75 ~ ~0.4 ~ 0.4 0.15 0.4 0 60 normal
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~0.6 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/vfx
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~0.3 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/vfx
    execute unless data storage api: Return.Effect{Stack:4} run playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2
