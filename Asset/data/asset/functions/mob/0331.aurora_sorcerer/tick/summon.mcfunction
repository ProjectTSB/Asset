#> asset:mob/0331.aurora_sorcerer/tick/summon
#
# 弾を召喚する
#
# @within function asset:mob/0331.aurora_sorcerer/tick/shoot

# (難易度値 * 2.5)をフィールドへ代入
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.FieldOverride.MPReducePer float 2.5 run data get storage api: Return.Difficulty

# ハードなら強化設定をtrueに
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.FieldOverride.Enhanced set value true

# 召喚
    data modify storage api: Argument.ID set value 2080
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
