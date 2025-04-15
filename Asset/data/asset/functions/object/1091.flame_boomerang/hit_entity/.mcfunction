#> asset:object/1091.flame_boomerang/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/hit_entity

# ReturnToOwnerがあれば消滅
    execute if entity @s[tag=ReturnToOwner] run return run function asset:object/call.m {method:"kill"}

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] run function asset:object/1091.flame_boomerang/hit_entity/damage
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,type=!player,tag=1091.TargetEntity,distance=..5] remove 1091.TargetEntity
