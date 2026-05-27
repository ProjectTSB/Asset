#> asset:object/1151.dolphin_dive/tick/wave/damage/3
#
#
#
# @within function asset:object/1151.dolphin_dive/tick/wave/3

#> Private
# @private
    #declare score_holder $UserID

# 円柱Libを用いて判定する
    data modify storage lib: Argument.BoundingCylinder.Radius set value 6d
    data modify storage lib: Argument.BoundingCylinder.Height set value 5d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7]"
    execute positioned ~ ~-1 ~ run function lib:bounding_cylinder/

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier

# Motion設定
    data modify storage lib: Argument.VectorMagnitude set value 2.5f
    data modify storage lib: Argument.KnockbackResist set value 1b

# 多重ヒット防止判定をしてダメージとMotion
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=BoundingCylinder,tag=!Uninterferable,distance=..7] run function asset:object/1151.dolphin_dive/tick/wave/damage/check_duplicate

# DamageAPI リセット
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living_without_player,tag=BoundingCylinder,distance=..7] remove BoundingCylinder
