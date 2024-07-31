#> asset:artifact/0554.catastrophe/trigger/fullset/attack/3.damage
#
# Victimにダメージを与える
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/attack/2.main

# 演出
    execute at @e[type=#lib:living,tag=Victim,distance=..32,limit=1] run particle soul_fire_flame ~ ~1.2 ~ 0.4 0.6 0.4 0 100 force @a
    execute at @e[type=#lib:living,tag=Victim,distance=..32,limit=1] run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 0.5 0.8
    execute at @e[type=#lib:living,tag=Victim,distance=..32,limit=1] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 0.5 0.5

# ダメージ
    data modify storage api: Argument.Damage set value 200f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..32,limit=1] run function api:damage/
    function api:damage/reset

# CDスコアにgametimeを代入
    execute store result score @s FE.Cooldown run time query gametime
