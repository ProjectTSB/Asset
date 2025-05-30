#> asset:mob/0046.clock_of_despair/tick/skill/4_oclock
#
# ビーム -> 自機狙い火
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

# ビーム投射
    execute if score @s 1A.LifeTime matches 801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/max/2_hard as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~120 ~
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~

    execute if score @s 1A.LifeTime matches 801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/max/2_hard as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~120 ~
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~

    execute if score @s 1A.LifeTime matches 801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/max/2_hard as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~120 ~
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~

    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 801 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
# ビーム回転
    execute if score @s 1A.LifeTime matches 821..830 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~1 ~
    execute if score @s 1A.LifeTime matches 831..840 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~2 ~
    execute if score @s 1A.LifeTime matches 841..850 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~3 ~
    execute if score @s 1A.LifeTime matches 851..860 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s 1A.LifeTime matches 861..999 if predicate api:global_vars/difficulty/max/2_hard as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s 1A.LifeTime matches 861..999 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~5 ~
    execute if score @s 1A.LifeTime matches 999 run kill @e[type=marker,tag=1A.SkillBeam,distance=..100]


# 火召喚
    execute if score @s 1A.LifeTime matches 850 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 865 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 875 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 890 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 900 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 915 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 925 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 930 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 940 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 950 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 955 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 965 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 975 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 980 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# 火攻撃
    execute if score @s 1A.LifeTime matches 990 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
