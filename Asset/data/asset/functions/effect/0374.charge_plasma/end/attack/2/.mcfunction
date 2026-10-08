#> asset:effect/0374.charge_plasma/end/attack/2
#
# プラズマ攻撃2: 拡散レーザー
#
# @within function asset:effect/0374.charge_plasma/end/**

# 3発撃つ
    execute rotated ~-30 ~ run function asset:effect/0374.charge_plasma/end/attack/2/summon

    execute rotated ~ ~ run function asset:effect/0374.charge_plasma/end/attack/2/summon

    execute rotated ~30 ~ run function asset:effect/0374.charge_plasma/end/attack/2/summon

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
