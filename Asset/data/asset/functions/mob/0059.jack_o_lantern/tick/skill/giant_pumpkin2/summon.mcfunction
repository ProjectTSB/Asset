#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/*

# FieldOverrideを設定
    #data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 召喚
    data modify storage api: Argument.ID set value 2031
    execute positioned ~ ~1.5 ~ run function api:object/summon
