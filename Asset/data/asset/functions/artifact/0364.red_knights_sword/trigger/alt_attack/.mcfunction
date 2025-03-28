#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/
#
# サブ攻撃
#
# @within function asset:artifact/0364.red_knights_sword/trigger/3.main

# 自身に最大HPの33%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.33 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは赤い騎士の剣に呑まれた","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset
