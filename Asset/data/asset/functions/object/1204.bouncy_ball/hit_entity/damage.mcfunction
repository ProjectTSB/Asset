#> asset:object/1204.bouncy_ball/hit_entity/damage
#
#
#
# @within function asset:object/1204.bouncy_ball/hit_entity/

#> private
# @private
    #declare score_holder $Temporary

#ヒットした敵のIDを取得
    execute store result storage asset:context this.HitEnemyID int 1 run scoreboard players get @s MobUUID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute if entity @a[tag=1AI.Owner] as @a[tag=1AI.Owner] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 射程を5だけ延長
    execute store result score $Temporary Temporary run data get storage asset:context this.RemainingRange 1
    scoreboard players operation $Temporary Temporary += $5 Const
    execute store result storage asset:context this.RemainingRange int 1 run scoreboard players get $Temporary Temporary

# リセット
    scoreboard players reset $Temporary Temporary
