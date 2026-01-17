#> asset:mob/0371.lightning_spellbook/tick/summon
#
# 魔法を召喚する処理
#
# @within function asset:mob/0371.lightning_spellbook/tick/ready

#> Private
# @private
    #declare score_holder $Difficulty

# 難易度値を取得する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# KillTickを設定 (116 + 難易度値 * 16)
# (KillTick / 8) 回だけ攻撃する
    scoreboard players operation $Difficulty Temporary *= $16 Const
    execute store result storage api: Argument.FieldOverride.OnGroundTick int 1 run scoreboard players add $Difficulty Temporary 16

# 魔法を召喚
    data modify storage api: Argument.ID set value 2049
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary

# リセット
    function asset:mob/0371.lightning_spellbook/tick/reset
