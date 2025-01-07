#> asset:mob/0237.lunatic_mage/tick/skill/magic_summon/thunder
#
# 雷魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

# 召喚
    data modify storage api: Argument.ID set value 2075
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
