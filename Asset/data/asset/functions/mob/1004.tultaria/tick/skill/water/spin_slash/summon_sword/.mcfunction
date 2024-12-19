#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/
#
# 剣を召喚する
#
# @within function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

# 召喚
    data modify storage api: Argument.FieldOverride set value {Rotation:1}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:2}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:3}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    data modify storage api: Argument.FieldOverride set value {Rotation:4}
    function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon

# フェイズ2だと追加で召喚する
    execute if score @s RW.Phase matches 2.. run data modify storage api: Argument.FieldOverride set value {Rotation:5}
    execute if score @s RW.Phase matches 2.. run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if score @s RW.Phase matches 2.. run data modify storage api: Argument.FieldOverride set value {Rotation:6}
    execute if score @s RW.Phase matches 2.. run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if score @s RW.Phase matches 2.. run data modify storage api: Argument.FieldOverride set value {Rotation:7}
    execute if score @s RW.Phase matches 2.. run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
    execute if score @s RW.Phase matches 2.. run data modify storage api: Argument.FieldOverride set value {Rotation:8}
    execute if score @s RW.Phase matches 2.. run function asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 10
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 2
    playsound minecraft:block.beacon.ambient neutral @a ~ ~ ~ 1 2
