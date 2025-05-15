#> asset:mob/0370.wave_spellbook/tick/summon
#
# 魔法を召喚
#
# @within function asset:mob/0370.wave_spellbook/tick/ready

#> Private
# @private
    #declare score_holder $Difficulty

# プレイヤーの方を見る
# Rotation[1]は45で固定
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ 45

# ノーマル以上ならDebuffをtrueに
    execute if predicate api:global_vars/difficulty/min/2_hard run data modify storage api: Argument.FieldOverride.Debuff set value true

# 難易度値を取得する
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# KillTickを設定 (110 + 難易度値 * 10)
    scoreboard players operation $Difficulty Temporary *= $10 Const
    execute store result storage api: Argument.FieldOverride.KillTick int 1 run scoreboard players add $Difficulty Temporary 110

# 難易度値を再度取得
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 50 * (難易度値 + 1)をDurationへ代入
    execute store result storage api: Argument.FieldOverride.Duration int 50 run scoreboard players add $Difficulty Temporary 1

# (難易度値 - 1)をStackへ代入
    execute store result storage api: Argument.FieldOverride.Stack int 1 run scoreboard players remove $Difficulty Temporary 2

# 弾を召喚
    data modify storage api: Argument.ID set value 2048
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Difficulty Temporary

# 消滅
    kill @s
