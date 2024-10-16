#> asset:mob/0363.white_spellbook/tick/summon
#
# 魔法を召喚
#
# @within function
#   asset:mob/0363.white_spellbook/tick/magic
#   asset:mob/0363.white_spellbook/tick/spread

# 召喚
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.ID set value 2046
    function api:object/summon
