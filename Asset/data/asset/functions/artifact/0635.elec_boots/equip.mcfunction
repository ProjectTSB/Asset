#> asset:artifact/0635.elec_boots/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/635/equip

# 演出
    particle dust 1 1 0 1 ~ ~0.3 ~ 0.4 0.1 0.4 0 6 normal @a
    particle firework ~ ~0.3 ~ 0.4 0.2 0.4 0 6 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.5 0
