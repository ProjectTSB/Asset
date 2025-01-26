#> asset:object/2180.tiamat_pillar/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/tick_kill

# 演出
    particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 5
    particle end_rod ~ ~2 ~ 0.5 2 0.5 0.5 10
    particle flash ~ ~1 ~ 0.5 2 0.5 0.5 3
    particle dust 0.851 0.667 1 4 ~ ~2 ~ 2 3 2 0.5 10
    playsound block.glass.break hostile @a ~ ~ ~ 1 0.7

# 攻撃
    execute if entity @s[tag=2180.Pillar.Thunder.1] run function asset:object/2180.tiamat_pillar/tick/attack_0
    execute if entity @s[tag=2180.Pillar.Thunder.2] run function asset:object/2180.tiamat_pillar/tick/attack_1

# 消滅
    kill @s
