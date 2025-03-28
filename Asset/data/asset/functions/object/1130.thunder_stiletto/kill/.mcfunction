#> asset:object/1130.thunder_stiletto/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1130/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0.5 20 normal @a
    particle dust 1 0.8 0.4 1.2 ~ ~ ~ 0.1 0.1 0.1 0 8
    playsound item.trident.return neutral @a ~ ~ ~ 0.5 2 0
    playsound item.trident.hit_ground neutral @a ~ ~ ~ 0.8 1.2 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
