#> asset:object/1081.barrel/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1081/hit_entity

#> Private
# @private
    #declare score_holder $UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,dy=0.02,dz=0,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# 消滅
    scoreboard players reset $UserID Temporary
    function asset:object/call.m {method:kill}
