#> asset:mob/0232.honey_leader/tick/skill/beam/shoot_and_reset
#
# ビーム発射の処理とリセット処理を行うよ
#
# @within function asset:mob/0232.honey_leader/tick/skill/beam/

# ビーム発射
    playsound entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 1 1.5 0.8
    playsound block.honey_block.hit hostile @a[distance=..32] ~ ~ ~ 1 1 0.8
    playsound block.honey_block.hit hostile @a[distance=..32] ~ ~ ~ 1 1.2 0.8
    execute anchored eyes run function asset:mob/0232.honey_leader/tick/skill/beam/recursive

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..20] at @s run function asset:mob/0232.honey_leader/tick/skill/beam/hit

# リセット
    function asset:mob/0232.honey_leader/tick/skill/reset
