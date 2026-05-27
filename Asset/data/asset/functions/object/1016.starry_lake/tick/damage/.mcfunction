#> asset:object/1016.starry_lake/tick/damage/
#
#
#
# @within function asset:object/1016.starry_lake/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.05 0.6 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Lake
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=1016.Target,tag=!Uninterferable,distance=..7.5] run function asset:object/1016.starry_lake/tick/damage/check_duplicate
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,tag=1016.Target,distance=..7.5] remove 1016.Target
    scoreboard players reset $UserID Temporary
