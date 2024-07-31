#> asset:artifact/0554.catastrophe/trigger/fullset/hurt/3.damage
#
# Attackerにダメージを与える
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/hurt/2.main

# 演出
    execute at @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run particle soul_fire_flame ~ ~0.5 ~ 0.4 0.6 0.4 0 100 force @a

# ダメージ
    data modify storage api: Argument.Damage set value 200f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,distance=..32,limit=1] run function api:damage/
    function api:damage/reset

# CDスコアにgametimeを代入
    execute store result score @s FE.Cooldown run time query gametime
