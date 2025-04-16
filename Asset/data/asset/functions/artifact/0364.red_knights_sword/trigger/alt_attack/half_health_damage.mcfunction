#> asset:artifact/0364.red_knights_sword/trigger/alt_attack/half_health_damage
#
# 最大HP半分のダメージを受ける！
#
# @within function asset:artifact/0364.red_knights_sword/trigger/alt_attack/

# 自身に最大HPの50%のダメージを与える
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.5 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset
