#> asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/penalty
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

# 召喚
    data modify storage api: Argument.ID set value 2031
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Giant.Penalty
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ run function api:object/summon
