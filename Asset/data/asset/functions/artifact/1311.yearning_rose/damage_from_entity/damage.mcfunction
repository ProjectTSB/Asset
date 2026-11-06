#> asset:artifact/1311.yearning_rose/damage_from_entity/damage
#
#
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/3.main

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $DamageMax

# カウンターダメージ(e1)
    execute store result score $Damage Temporary run data get storage asset:context Damage.Amount 300

# ダメージ上限(e1)
    scoreboard players set $DamageMax Temporary 20000

# ダメージ
    execute store result storage api: Argument.Damage float 0.1 run scoreboard players operation $Damage Temporary < $DamageMax Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Attacker,distance=..64,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary
    scoreboard players reset $DamageMax Temporary
