#> asset:artifact/1078.pigeon_blood/attack_melee/summon_resonance_attack
#
# 共鳴攻撃
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/damage.m

# 条件を満たしていないならキャンセル
    execute unless function asset:artifact/1078.pigeon_blood/predicate/is_possible_to_resonance_attack run return fail
# 追撃用 Object を召喚
    data modify storage api: Argument.ID set value 1147
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:temp TY.Const.ResonanceAttack.Damage
    data modify storage api: Argument.FieldOverride.DistanceMax set from storage asset:temp TY.Const.ResonanceAttack.Range
    execute rotated as @s run function api:object/summon
# 攻撃時刻を記録
    execute store result score @s TY.LatestResonanceAttack run data get storage global Time
