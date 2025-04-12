#> asset:artifact/0711.deep_sea_coral_crown/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0711.deep_sea_coral_crown/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 他部位の情報を取る
    data modify storage api: Argument.ID set value 240
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} run particle dust 0.439 0.737 1 0.75 ~ ~1.7 ~ 0.4 0.2 0.4 0 50 normal
    execute unless data storage api: Return.Effect{Stack:4} positioned ~ ~1.7 ~ rotated ~ 0 run function asset:artifact/0711.deep_sea_coral_crown/equip/vfx
    execute unless data storage api: Return.Effect{Stack:4} run playsound ogg:block.amethyst_cluster.break2 player @a ~ ~ ~ 1 2
