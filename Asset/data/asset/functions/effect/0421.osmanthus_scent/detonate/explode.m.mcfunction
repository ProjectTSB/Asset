#> asset:effect/0421.osmanthus_scent/detonate/explode.m
#
# 付与先の半径SecondRadiusの敵へ、元のダメージとMP回復量にSecondRate%を掛けた値で攻撃する
#
# @input args:
#   SecondRadius : double
# @within function asset:effect/0421.osmanthus_scent/detonate/

#> Private
# @private
    #declare score_holder $Rate
    #declare score_holder $Damage
    #declare score_holder $MPHeal

# ダメージ
    # SecondRate%攻撃力を下げて攻撃
    execute store result score $Rate Temporary run data get storage asset:context this.SecondRate
    execute store result score $Damage Temporary run data get storage asset:context this.Damage 100
    scoreboard players operation $Damage Temporary *= $Rate Temporary
    execute store result storage api: Argument.Damage double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $MPHeal Temporary run data get storage asset:context this.MPHeal 100
    scoreboard players operation $MPHeal Temporary *= $Rate Temporary
    execute store result storage api: Argument.AdditionalMPHeal double 0.0001 run scoreboard players get $MPHeal Temporary
    #reset
    scoreboard players reset $Rate Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MPHeal Temporary
    function api:damage/modifier
    function api:damage/single_damage_session/open
    $execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..$(SecondRadius)] run function api:damage/
    function api:damage/single_damage_session/close
    function api:damage/reset
