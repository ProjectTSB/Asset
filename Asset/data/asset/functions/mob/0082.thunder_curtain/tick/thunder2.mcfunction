#> asset:mob/0082.thunder_curtain/tick/thunder2
#
# 雷の処理2
#
# @within function asset:mob/0082.thunder_curtain/tick/thunder1

# パーティクル演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.2 2.5 0.2 0 50
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 1

# 範囲内のプレイヤーにTagを付与する
    tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~1.2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~2.4 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~3.6 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
    execute positioned ~ ~4.8 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add ThunderTarget
