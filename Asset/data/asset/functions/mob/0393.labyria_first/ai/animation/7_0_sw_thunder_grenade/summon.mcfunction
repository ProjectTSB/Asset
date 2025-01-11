#> asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/summon
#
# グレネード召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2005
    function api:object/summon
