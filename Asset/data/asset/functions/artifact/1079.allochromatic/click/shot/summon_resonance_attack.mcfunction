#> asset:artifact/1079.allochromatic/click/shot/summon_resonance_attack
#
# 共鳴攻撃
#
# @within function asset:artifact/1079.allochromatic/click/shot/hit.m

# 条件を満たしていないならキャンセル
    execute unless function asset:artifact/1079.allochromatic/predicate/is_possible_to_resonance_attack run return fail
# 追撃用 Object を召喚
    data modify storage api: Argument.ID set value 1146
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @a[tag=this,limit=1] UserID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:temp TZ.Const.ResonanceAttack.Damage
    execute rotated as @a[tag=this,limit=1] run function api:object/summon
# 攻撃時刻を記録
    execute store result score @s TZ.LatestResonanceAttack run data get storage global Time
