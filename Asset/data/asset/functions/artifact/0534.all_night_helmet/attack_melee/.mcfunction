#> asset:artifact/0534.all_night_helmet/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/534/attack_melee/

# 演出
    playsound minecraft:entity.drowned.death_water player @a ~ ~ ~ 1 0.8
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.03 30

# ダメージ
    data modify storage api: Argument.Damage set value 15.0f
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 回復
    data modify storage api: Argument.Heal set value 2f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
