#> asset:artifact/1598.banisher/trigger/damage
#
#
#
# @within function asset:artifact/1598.banisher/trigger/rec

# 攻撃情報設定
    #通常
    execute if entity @s[tag=!Enemy.Boss] run data modify storage api: Argument.Damage set value 200
    #天使
    execute if entity @s[tag=Enemy.Boss] run data modify storage api: Argument.Damage set value 2000

    data modify storage api: Argument.AttackType set value "Magic"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
