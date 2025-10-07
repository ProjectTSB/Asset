#> asset:artifact/1311.yearning_rose/damage_from_entity/damage
#
#
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/3.main

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $DamageMax

# カウンターダメージ(e2)
    execute store result score $Damage Temporary run data get storage asset:context Damage.Amount 3000

# ダメージ上限(e2)
    scoreboard players set $DamageMax Temporary 200000

# ダメージ
    execute store result storage api: Argument.Damage float 0.01 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Attacker,tag=!Uninterferable,distance=..64,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $DamageMax Temporary
