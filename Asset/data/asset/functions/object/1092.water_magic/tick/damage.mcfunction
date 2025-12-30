#> asset:object/1092.water_magic/tick/damage
#
#
#
# @within function asset:object/1092.water_magic/tick/

#> Private
# @private
    #declare score_holder $UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# 演出
    execute at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run particle minecraft:block water ~ ~1 ~ 0.1 1.3 0.1 10 30
    playsound entity.dolphin.splash neutral @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash neutral @a ~ ~ ~ 1 1
    playsound entity.dolphin.splash neutral @a ~ ~ ~ 1 0

# リセット
    scoreboard players reset $UserID Temporary
