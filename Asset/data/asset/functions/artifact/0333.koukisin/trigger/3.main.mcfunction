#> asset:artifact/0333.koukisin/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0333.koukisin/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:crit ~ ~1 ~ 0.2 0.8 0.2 0 80 normal @a
    playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.8 2

# 耐性貫通ダメージ
    data modify storage api: Argument.Damage set value 12f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..10,limit=1] run function api:damage/
    function api:damage/reset
