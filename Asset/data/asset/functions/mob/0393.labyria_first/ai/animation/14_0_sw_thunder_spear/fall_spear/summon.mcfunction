#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/summon
#
# 槍召喚
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/in
#   asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/out

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2012
    function api:object/summon
