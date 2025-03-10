#> asset:object/1107.crystal_dart/hit_entity/damage
#
#
#
# @within function asset:object/1107.crystal_dart/hit_entity/

#> Private
# @private
    #declare score_holder $UserID

# User特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 反射回数が6なら死
    execute store result storage asset:context this.EntityHit int 0.9999999999 run data get storage asset:context this.EntityHit 1
    execute if data storage asset:context this{EntityHit:0} run function asset:object/call.m {method:kill}


# タグ付与
    tag @s add 1107.CannotHit
