#> asset:object/1093.miracle_magic/tick/damage
#
#
#
# @within function asset:object/1093.miracle_magic/tick/shoot

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0.4 200
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

    playsound item.trident.riptide_3 neutral @a ~ ~ ~ 1 2
    playsound item.trident.riptide_3 neutral @a ~ ~ ~ 1 2
    playsound item.trident.riptide_3 neutral @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget

# リセット
    scoreboard players reset $UserID Temporary
