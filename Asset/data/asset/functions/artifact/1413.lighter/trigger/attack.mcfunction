#> asset:artifact/1413.lighter/trigger/attack
#
# 魔法攻撃を行う
#
# @within function asset:artifact/1413.lighter/trigger/3.main

    
# 演出
    particle flame ~ ~0.1 ~ 0.55 2.6 0.55 0.05 200 normal @a
    particle flame ~ ~1.0 ~ 0.65 0.35 0.65 0.04 90 normal @a
    particle flame ~ ~2.0 ~ 0.75 0.5 0.75 0.05 45 normal @a

    particle smoke ~ ~0.1 ~ 0.55 2.4 0.55 0.04 120 normal @a
    particle lava ~ ~0.1 ~ 0.35 0.25 0.35 0.01 12 normal @a

    playsound item.firecharge.use player @a ~ ~ ~ 1.0 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 1.2 1.0 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.9 1.3 0

# ダメージ
    data modify storage api: Argument.Damage set value 50f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..4,sort=nearest] run function api:damage/
    function api:damage/reset
