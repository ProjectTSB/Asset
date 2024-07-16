#> asset:mob/0082.thunder_curtain/tick/thunder2
#
# 雷の処理2
#
# @within function asset:mob/0082.thunder_curtain/tick/thunder1

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.2 2.5 0.2 0 50
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.3 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.3 0 0

# 範囲内のプレイヤーにTagを付与する
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~1.2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~2.4 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~3.6 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~4.8 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
