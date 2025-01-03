#> asset:mob/0046.clock_of_despair/tick/skill/9_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

execute if score @s 1A.LifeTime matches 1874 as @e[type=marker,tag=1A.SkillFF1,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1884..1894 as @e[type=marker,tag=1A.SkillFF1,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/
execute if score @s 1A.LifeTime matches 1884..1894 as @e[type=marker,tag=1A.SkillFF1,distance=..6.1] at @s positioned ~ ~8 ~ run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8

execute if score @s 1A.LifeTime matches 1909 as @e[type=marker,tag=1A.SkillFF2,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1919..1929 as @e[type=marker,tag=1A.SkillFF2,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/
execute if score @s 1A.LifeTime matches 1919..1929 as @e[type=marker,tag=1A.SkillFF2,distance=..6.1] at @s positioned ~ ~8 ~ run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8

execute if score @s 1A.LifeTime matches 1944 as @e[type=marker,tag=1A.SkillFF3,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1954..1964 as @e[type=marker,tag=1A.SkillFF3,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/
execute if score @s 1A.LifeTime matches 1954..1964 as @e[type=marker,tag=1A.SkillFF3,distance=..6.1] at @s positioned ~ ~8 ~ run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8

execute if score @s 1A.LifeTime matches 1979 as @e[type=marker,tag=1A.SkillFF4,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/summon_aoe.m {VisibleTime:8,InterpolationTime:5}
execute if score @s 1A.LifeTime matches 1989..1999 as @e[type=marker,tag=1A.SkillFF4,distance=..6.1] at @s run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/
execute if score @s 1A.LifeTime matches 1989..1999 as @e[type=marker,tag=1A.SkillFF4,distance=..6.1] at @s positioned ~ ~8 ~ run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8

execute if score @s 1A.LifeTime matches 1999 run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/kill
