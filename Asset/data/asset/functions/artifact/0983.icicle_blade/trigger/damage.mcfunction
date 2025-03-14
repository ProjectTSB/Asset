#> asset:artifact/0983.icicle_blade/trigger/damage
#
#
#
# @within function asset:artifact/0983.icicle_blade/trigger/3.main

# ターゲット指定
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] add RB.Hit
    execute as @e[type=#lib:living,type=!player,tag=RB.Hit,tag=!Uninterferable,distance=..5] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=RB.Hit,tag=!Uninterferable,distance=..100] remove RB.Hit

# 演出
    execute as @e[type=#lib:living,type=!player,tag=RB.Hit,tag=!Uninterferable,distance=..5] run particle snowflake ~ ~0.5 ~ 0 1 0 0 5 normal

# ダメージを与える
    data modify storage api: Argument.Damage set value 182f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=RB.Hit,tag=!Uninterferable,distance=..5] run function api:damage/

# リセット
    function api:damage/reset
    tag @e[type=#lib:living,type=!player,tag=RB.Hit,tag=!Uninterferable,distance=..5] remove RB.Hit
