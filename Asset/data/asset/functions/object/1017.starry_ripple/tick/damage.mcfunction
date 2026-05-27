#> asset:object/1017.starry_ripple/tick/damage
#
#
#
# @within function asset:object/1017.starry_ripple/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    execute positioned ~ ~0.4 ~ run function asset:object/1017.starry_ripple/tick/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1.2 0.7 0

# 演出
    playsound entity.dolphin.jump neutral @a ~ ~ ~ 0.05 0.6 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
