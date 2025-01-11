#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/summon
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/water/spin_slash/summon_sword/
#   asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/summon
#   asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/water/sword_spin/summon_reversed

# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2053
    function api:object/summon
