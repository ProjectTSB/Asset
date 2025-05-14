#> asset:mob/0046.clock_of_despair/tick/skill/2_oclock
#
# ビーム + 時計レーザー
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

# ビーム
    execute if score @s 1A.LifeTime matches 401 positioned ~ ~10 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
# ビーム追尾
    execute if score @s 1A.LifeTime matches 421..590 if predicate api:global_vars/difficulty/max/2_hard as @e[type=marker,tag=1A.SkillBeam,scores={1A.Cooldown=0},distance=..100] at @s facing entity @p[tag=!PlayerShouldInvulnerable] feet rotated ~ 0 run tp @s ^ ^ ^0.2 0 90
    execute if score @s 1A.LifeTime matches 421..590 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,scores={1A.Cooldown=0},distance=..100] at @s facing entity @p[tag=!PlayerShouldInvulnerable] feet rotated ~ 0 run tp @s ^ ^ ^0.25 0 90
    execute if score @s 1A.LifeTime matches 591 run kill @e[type=marker,tag=1A.SkillBeam,distance=..100]

# 時計レーザー
    execute if score @s 1A.LifeTime matches 400 positioned ~006 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 416 if predicate api:global_vars/difficulty/min/3_blessless positioned ~016 ~6 ~006 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 432 positioned ~-06 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
    execute if score @s 1A.LifeTime matches 448 if predicate api:global_vars/difficulty/min/3_blessless positioned ~-16 ~6 ~-06 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_laser_clock/summon
