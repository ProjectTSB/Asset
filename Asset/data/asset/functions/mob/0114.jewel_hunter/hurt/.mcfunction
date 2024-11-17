#> asset:mob/0114.jewel_hunter/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/114/hurt

# 演出
    particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 1 1 0

# Attackerが離れた場所にいる場合、Attackerに反射攻撃
    execute unless entity @p[tag=Attacker,distance=..5] anchored eyes facing entity @p[tag=Attacker,distance=..32] eyes anchored feet positioned ^ ^1 ^ summon marker run function asset:mob/0114.jewel_hunter/hurt/reflect
