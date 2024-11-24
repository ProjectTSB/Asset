#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon
#
# 巨大カボチャを召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/**

# 召喚
    data modify storage api: Argument.ID set value 2031
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Giant
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ run function api:object/summon
