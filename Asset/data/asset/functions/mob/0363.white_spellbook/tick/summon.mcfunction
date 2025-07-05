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

# ノーマル以上ならDebuffをtrueに
    execute if predicate api:global_vars/difficulty/min/2_hard run data modify storage api: Argument.FieldOverride.Debuff set value true

# 難易度値を取得する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 50 * (難易度値 + 1)をDurationへ代入
    execute store result storage api: Argument.FieldOverride.Duration int 50 run scoreboard players add $Difficulty Temporary 1

# (難易度値 - 1)をStackへ代入
    execute store result storage api: Argument.FieldOverride.Stack int 1 run scoreboard players remove $Difficulty Temporary 2

# 召喚
    data modify storage api: Argument.ID set value 2046
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary
