#> asset:artifact/0333.koukisin/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/333/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run particle minecraft:crit ~ ~1 ~ 0.2 0.8 0.2 0 80 normal @a[distance=..30]
    playsound minecraft:block.anvil.place player @a[distance=..10] ~ ~ ~ 0.8 2

# 耐性貫通ダメージ
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10,limit=1] run function api:damage/
    function api:damage/reset
