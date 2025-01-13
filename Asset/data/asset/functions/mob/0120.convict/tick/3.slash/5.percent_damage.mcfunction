#> asset:mob/0120.convict/tick/3.slash/5.percent_damage
#
# 割合ダメージの処理
#
# @within function asset:mob/0120.convict/tick/3.slash/4.slash_attack2

# 割合ダメージ
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage float 0.020 run data get storage api: Return.MaxHealth 10
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value 1b
    execute as @e[type=wither_skeleton,tag=this,distance=..0.01,limit=1] run function api:damage/modifier
    function api:damage/
# リセット
    function api:damage/reset
