#> asset:artifact/0870.samurai_blade/trigger/slash
#
#
#
# @within function asset:artifact/0870.samurai_blade/trigger/**

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set value 62.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set value 1.8f
    function api:damage/modifier
    execute positioned ^ ^ ^1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run function api:damage/
    function api:damage/reset
