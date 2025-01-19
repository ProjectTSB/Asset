#> asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
#
# 反射サンダー召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2006
    function api:object/summon
