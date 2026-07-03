#> asset:effect/374.charge_plasma/end/attack/2
#
# プラズマ攻撃2: 拡散レーザー
#
# @within function asset:effect/374.charge_plasma/end/**

# 3発撃つ
    data modify storage api: Argument.ID set value 1169
    execute rotated ~-60 ~ run function api:object/summon

    data modify storage api: Argument.ID set value 1169
    execute rotated ~ ~ run function api:object/summon

    data modify storage api: Argument.ID set value 1169
    execute rotated ~60 ~ run function api:object/summon

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1.0 2.0
