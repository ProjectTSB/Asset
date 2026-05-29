#> asset:object/1158.ouroboros_ball/hit_entity/damage
#
# damage処理
#
# @within function asset:object/1158.ouroboros_ball/hit_entity/

#> private
# @private
    #declare score_holder $OwnerID
    #declare score_holder $Temporary

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run function api:damage/modifier
# 与えるダメージをスコア分増加させ、その八割をスコアに代入する
    execute store result score $Temporary Temporary run data get storage api: Argument.Damage
    execute as @a if score @s UserID = $OwnerID Temporary run scoreboard players operation $Temporary Temporary += @s 1158.DamageHolder
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Temporary Temporary
    execute store result score $Temporary Temporary run data get storage api: Argument.Damage 80
    scoreboard players operation $Temporary Temporary /= $100 Const
    execute as @a if score @s UserID = $OwnerID Temporary store result score @s 1158.DamageHolder run scoreboard players get $Temporary Temporary
    execute as @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset

    execute as @a if score @s UserID = $OwnerID Temporary run function asset:object/1158.ouroboros_ball/hit_entity/effect_add

# リセット
    scoreboard players reset $OwnerID Temporary
    scoreboard players reset $Temporary Temporary
