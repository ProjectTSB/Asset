#> asset:object/1067.jewel_rod_of_horai/tick/attack/damage
#
# 装備数に応じたダメージを与える
# @input
#   tag MS.AttackTarget #攻撃対象エンティティにつく
#
# @within function asset:object/1067.jewel_rod_of_horai/tick/

#>prv
# @private
    #declare score_holder $MS.OwnerID
    #declare tag MS.Owner

# 攻撃実行者のID取得
    execute store result score $MS.OwnerID Temporary run data get storage asset:context this.OwnerID
    execute as @a if score @s UserID = $MS.OwnerID Temporary run tag @s add MS.Owner

# 1発目ダメージデータ
    execute if score $MS.AttackLevel Temporary matches 0.. run data modify storage api: Argument.Damage set value 130f
    execute if score $MS.AttackLevel Temporary matches 0.. run data modify storage api: Argument.AttackType set value "Magic"
    execute if score $MS.AttackLevel Temporary matches 0.. run data modify storage api: Argument.ElementType set value "Fire"
    execute if score $MS.AttackLevel Temporary matches 0.. run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute if score $MS.AttackLevel Temporary matches 0.. as @p[tag=MS.Owner] run function api:damage/modifier
    execute if score $MS.AttackLevel Temporary matches 0.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function api:damage/
    execute if score $MS.AttackLevel Temporary matches 0.. run function api:damage/reset

# これ以降MP回復させないためストレージ除去
    data remove storage api: Argument.AdditionalMPHeal

# 2発目ダメージデータ
    execute if score $MS.AttackLevel Temporary matches 1.. run data modify storage api: Argument.Damage set value 100f
    execute if score $MS.AttackLevel Temporary matches 1.. run data modify storage api: Argument.AttackType set value "Magic"
    execute if score $MS.AttackLevel Temporary matches 1.. run data modify storage api: Argument.ElementType set value "Thunder"
    execute if score $MS.AttackLevel Temporary matches 1.. as @p[tag=MS.Owner] run function api:damage/modifier
    execute if score $MS.AttackLevel Temporary matches 1.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function api:damage/
    execute if score $MS.AttackLevel Temporary matches 1.. run function api:damage/reset

# 3発目ダメージデータ
    execute if score $MS.AttackLevel Temporary matches 2.. run data modify storage api: Argument.Damage set value 100f
    execute if score $MS.AttackLevel Temporary matches 2.. run data modify storage api: Argument.AttackType set value "Magic"
    execute if score $MS.AttackLevel Temporary matches 2.. run data modify storage api: Argument.ElementType set value "Water"
    execute if score $MS.AttackLevel Temporary matches 2.. as @p[tag=MS.Owner] run function api:damage/modifier
    execute if score $MS.AttackLevel Temporary matches 2.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function api:damage/
    execute if score $MS.AttackLevel Temporary matches 2.. run function api:damage/reset

# 4発目ダメージデータ
    execute if score $MS.AttackLevel Temporary matches 3.. run data modify storage api: Argument.Damage set value 100f
    execute if score $MS.AttackLevel Temporary matches 3.. run data modify storage api: Argument.AttackType set value "Magic"
    execute if score $MS.AttackLevel Temporary matches 3.. run data modify storage api: Argument.ElementType set value "None"
    execute if score $MS.AttackLevel Temporary matches 3.. as @p[tag=MS.Owner] run function api:damage/modifier
    execute if score $MS.AttackLevel Temporary matches 3.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function api:damage/
    execute if score $MS.AttackLevel Temporary matches 3.. run function api:damage/reset

# 5発目ダメージデータ
    execute if score $MS.AttackLevel Temporary matches 4.. run data modify storage api: Argument.Damage set value 100f
    execute if score $MS.AttackLevel Temporary matches 4.. run data modify storage api: Argument.AttackType set value "Magic"
    execute if score $MS.AttackLevel Temporary matches 4.. run data modify storage api: Argument.ElementType set value "None"
    execute if score $MS.AttackLevel Temporary matches 4.. as @p[tag=MS.Owner] run function api:damage/modifier
    execute if score $MS.AttackLevel Temporary matches 4.. as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25] run function api:damage/
    execute if score $MS.AttackLevel Temporary matches 4.. run function api:damage/reset

# reset
    tag @a[tag=MS.Owner] remove MS.Owner
    scoreboard players reset $MS.OwnerID Temporary
