#> asset:artifact/1584.pk_insight/damage_from_entity/3.1.success
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/3.main

# 攻撃者に割合ダメージ
    #初期化
    data modify storage api: Argument.Damage set value 0
    #通常の敵には35%
    execute as @e[type=#lib:living,tag=Attacker,tag=!Enemy.Boss,tag=!Uninterferable,distance=..20] store result storage api: Argument.Damage float 0.35 run function api:mob/get_max_health
    #天使には割合ではなく固定で1000ダメージ
    execute as @e[type=#lib:living,tag=Attacker,tag=Enemy.Boss,tag=!Uninterferable,distance=..20] run data modify storage api: Argument.Damage set value 1000

    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if data storage api: Argument.Damage as @e[type=#lib:living,tag=Attacker,distance=..20] run function api:damage/
    function api:damage/reset
