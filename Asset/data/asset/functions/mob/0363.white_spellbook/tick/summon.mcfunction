#> asset:mob/0363.white_spellbook/tick/summon
#
# 魔法を召喚
#
# @within function
#   asset:mob/0363.white_spellbook/tick/magic
#   asset:mob/0363.white_spellbook/tick/spread

#> Private
# @private
    #declare score_holder $Difficulty

# 召喚
    data modify storage api: Argument.ID set value 2046
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary
