#> asset:artifact/1638.tome_of_median/trigger/damage
#
#
#
# @within function asset:artifact/1638.tome_of_median/trigger/3.main

# 攻撃
    execute store result storage api: Argument.Damage double 1.0 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 演出
    execute positioned ~ ~1.5 ~ run function asset:artifact/1638.tome_of_median/trigger/fx
