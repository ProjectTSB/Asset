#> asset:object/1144.hekireki_thunder/tick/thunder
#
#
#
# @within function asset:object/1144.hekireki_thunder/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.4 3 0.4 0 80 force @a[distance=..40]
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 80 force @a[distance=..40]
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 3 force @a[distance=..40]
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 15 force @a[distance=..40]
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.3 1 0
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.3 0.5 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function asset:object/1144.hekireki_thunder/tick/check_duplicate
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
