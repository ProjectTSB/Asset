#> asset:object/2180.tiamat_pillar/tick/hit_thunder
#
# Objectのtick時の処理
#
# @within asset:object/2180.tiamat_pillar/tick/

# タグ消去
    tag @s remove 2180.Pillar.Thunder

# 演出
    particle flash ~ ~2 ~ 1 4 1 0 20
    playsound item.trident.thunder hostile @a ~ ~ ~ 0.7 2

# 帯電を1段階増やす
    execute if entity @s[tag=!2180.Pillar.Thunder.1,tag=!2180.Pillar.Thunder.2] run return run function asset:object/2180.tiamat_pillar/tick/hit_thunder_0
    execute if entity @s[tag=2180.Pillar.Thunder.1] run return run function asset:object/2180.tiamat_pillar/tick/hit_thunder_1
