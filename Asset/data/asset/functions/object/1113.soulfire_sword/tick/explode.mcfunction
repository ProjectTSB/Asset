#> asset:object/1113.soulfire_sword/tick/explode
#
#
#
# @within function asset:object/1113.soulfire_sword/tick/

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1



#> Private
# @private
    #declare score_holder $UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..7] run function api:damage/
    function api:damage/reset
