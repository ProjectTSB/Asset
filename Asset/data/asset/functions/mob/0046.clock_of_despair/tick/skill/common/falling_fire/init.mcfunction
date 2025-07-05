#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/init
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

#> Temp
# @private
#declare tag 1A.SkillFFTemp

summon marker ~ ~0.02 ~-6 {Rotation:[-90f,0f],Tags:["1A.SkillMarker","1A.SkillFallingFire"]}
summon marker ~06 ~0.02 ~ {Rotation:[  0f,0f],Tags:["1A.SkillMarker","1A.SkillFallingFire"]}
summon marker ~ ~0.02 ~06 {Rotation:[ 90f,0f],Tags:["1A.SkillMarker","1A.SkillFallingFire"]}
summon marker ~-6 ~0.02 ~ {Rotation:[180f,0f],Tags:["1A.SkillMarker","1A.SkillFallingFire"]}

tag @e[type=marker,tag=1A.SkillFallingFire,distance=..6.1,sort=random,limit=1] add 1A.SkillFF1

execute at @e[type=marker,tag=1A.SkillFF1,distance=..6.1,limit=1] rotated ~90 0 positioned ^ ^ ^12 run tag @e[type=marker,tag=1A.SkillFallingFire,distance=..0.1] add 1A.SkillFFTemp
execute if predicate api:global_vars/difficulty/min/3_blessless run tag @e[type=marker,tag=1A.SkillFallingFire,tag=!1A.SkillFF1,distance=..6.1,sort=random,limit=1] add 1A.SkillFF2
execute if predicate api:global_vars/difficulty/max/2_hard run tag @e[type=marker,tag=1A.SkillFallingFire,tag=!1A.SkillFF1,tag=!1A.SkillFFTemp,distance=..6.1,sort=random,limit=1] add 1A.SkillFF2
tag @e[type=marker,tag=1A.SkillFFTemp,distance=..6.1] remove 1A.SkillFFTemp

execute at @e[type=marker,tag=1A.SkillFF2,distance=..6.1,limit=1] rotated ~90 0 positioned ^ ^ ^12 run tag @e[type=marker,tag=1A.SkillFallingFire,distance=..0.1] add 1A.SkillFFTemp
execute if predicate api:global_vars/difficulty/min/3_blessless run tag @e[type=marker,tag=1A.SkillFallingFire,tag=!1A.SkillFF1,tag=!1A.SkillFF2,distance=..6.1,sort=random,limit=1] add 1A.SkillFF3
execute if predicate api:global_vars/difficulty/max/2_hard run tag @e[type=marker,tag=1A.SkillFallingFire,tag=!1A.SkillFF1,tag=!1A.SkillFF2,tag=!1A.SkillFFTemp,distance=..6.1] add 1A.SkillFF3
tag @e[type=marker,tag=1A.SkillFFTemp,distance=..6.1] remove 1A.SkillFFTemp

tag @e[type=marker,tag=1A.SkillFallingFire,tag=!1A.SkillFF1,tag=!1A.SkillFF2,tag=!1A.SkillFF3,distance=..6.1] add 1A.SkillFF4
