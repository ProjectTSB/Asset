#> asset:mob/0046.clock_of_despair/tick/skill/9_oclock
#
# 魔炎
#
# @within function asset:mob/0046.clock_of_despair/tick/skill_active

execute if score @s 1A.LifeTime matches 1854 at @e[type=marker,tag=1A.SkillFF1,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:28,InterpolationTime:25}
execute if score @s 1A.LifeTime matches 1884 at @e[type=marker,tag=1A.SkillFF1,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_object

execute if score @s 1A.LifeTime matches 1909 at @e[type=marker,tag=1A.SkillFF2,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1919 at @e[type=marker,tag=1A.SkillFF2,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_object

execute if score @s 1A.LifeTime matches 1944 at @e[type=marker,tag=1A.SkillFF3,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1954 at @e[type=marker,tag=1A.SkillFF3,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_object

execute if score @s 1A.LifeTime matches 1979 at @e[type=marker,tag=1A.SkillFF4,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1989 at @e[type=marker,tag=1A.SkillFF4,distance=..6.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_object

execute if score @s 1A.LifeTime matches 1999 run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/kill
