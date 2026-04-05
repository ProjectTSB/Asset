#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop
#
#
#
# @within function
#       asset:mob/0046.clock_of_despair/tick/skill/common/beam/tick
#       asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop

# 演出
    particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.05 0.05 0.05 0 1
    particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.1 2
    execute if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 1

# ビーム終端検知
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..1] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision/ run tag @s add Landing

# ターゲットにタグ付与
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add LandingTarget
# ヒット時処理
    execute if score @s 1A.LifeTime matches 20.. if score @s 1A.Cooldown matches 0 if entity @a[tag=LandingTarget,distance=..1] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/damage
# リセット
    tag @a[tag=LandingTarget,distance=..1] remove LandingTarget

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..20] run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop
