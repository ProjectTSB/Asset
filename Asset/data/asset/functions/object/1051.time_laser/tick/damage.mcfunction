#> asset:object/1051.time_laser/tick/damage
#
#
#
# @within function asset:object/1051.time_laser/tick/loop

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=LandingTarget,tag=!Uninterferable,sort=nearest] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,tag=Enemy,tag=LandingTarget,tag=!Uninterferable,sort=nearest] remove LandingTarget

# リセット
    scoreboard players reset $OwnerID Temporary
