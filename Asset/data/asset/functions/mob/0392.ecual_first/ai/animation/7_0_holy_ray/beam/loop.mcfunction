#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop
#
# ループ処理
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/
#   asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop

# ビームはブロックを破壊します
    execute unless block ^ ^ ^0.5 #lib:air unless block ^ ^ ^0.5 #lib:unbreakable run setblock ^ ^ ^0.5 air destroy

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add AW.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add AW.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add AW.Temp.Target

# 演出
    particle dust 0.72 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1
    particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 2
    particle fishing ~ ~ ~ 0.15 0.15 0.15 0.1 2
    execute if predicate lib:random_pass_per/5 run particle end_rod ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if predicate lib:random_pass_per/25 run particle glow ~ ~ ~ 0.15 0.15 0.15 0 1

# 着弾
    execute if entity @s[tag=AW.Landing] run function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!AW.Landing,distance=..45] run function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop
