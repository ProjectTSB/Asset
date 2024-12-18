#> asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/summon
#
# ノヴァ召喚
#
# @within function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/loop

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2007
    function api:object/summon
