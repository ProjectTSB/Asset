#> asset:mob/0046.clock_of_despair/tick/skill/2_oclock
#
# ビーム + 時計レーザー
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# ビーム
    execute if score @s 1A.LifeTime matches 401 positioned ~ ~10 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
# ビーム追尾
    execute if score @s 1A.LifeTime matches 421..590 if predicate api:global_vars/difficulty/max/normal as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^0.2 0 90
    execute if score @s 1A.LifeTime matches 421..590 if predicate api:global_vars/difficulty/min/hard as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^0.25 0 90
    execute if score @s 1A.LifeTime matches 591 run kill @e[type=marker,tag=1A.SkillBeam,distance=..100]

# 時計レーザー
    execute if score @s 1A.LifeTime matches 400 positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 416 if predicate api:global_vars/difficulty/min/hard positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 432 positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 448 if predicate api:global_vars/difficulty/min/hard positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
