#> asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/summon_reversed
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/

# 召喚
    data modify storage api: Argument.FieldOverride set value {Rotation:1,Reverse:true}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:2,Reverse:true}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:3,Reverse:true}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:4,Reverse:true}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon

# ハード以上かつ分身が残り一体だと増える
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run data modify storage api: Argument.FieldOverride set value {Rotation:5,Reverse:true}
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run data modify storage api: Argument.FieldOverride set value {Rotation:6,Reverse:true}
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run data modify storage api: Argument.FieldOverride set value {Rotation:7,Reverse:true}
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run data modify storage api: Argument.FieldOverride set value {Rotation:8,Reverse:true}
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=0.1..64,limit=1] run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 10
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.beacon.ambient neutral @a ~ ~ ~ 1 2
