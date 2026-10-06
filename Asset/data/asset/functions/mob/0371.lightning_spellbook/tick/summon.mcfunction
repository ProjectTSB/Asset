#> asset:mob/0371.lightning_spellbook/tick/summon
#
# 魔法を召喚する処理
#
# @within function asset:mob/0371.lightning_spellbook/tick/ready

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度値に比例した攻撃回数を設定
# (難易度値 * 2 + 2)回攻撃する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty 2
    execute store result storage api: Argument.FieldOverride.AttackCount int 1 run scoreboard players add $Difficulty Temporary 2

# 魔法を召喚
    data modify storage api: Argument.ID set value 2049
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary

# リセット
    function asset:mob/0371.lightning_spellbook/tick/reset
