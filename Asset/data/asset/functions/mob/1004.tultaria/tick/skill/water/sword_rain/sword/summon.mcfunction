#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/spread
#   asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/**

# 発射体のデータを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2043
    function api:object/summon
