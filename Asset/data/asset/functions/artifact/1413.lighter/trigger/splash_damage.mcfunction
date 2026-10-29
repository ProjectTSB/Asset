#> asset:artifact/1413.lighter/trigger/splash_damage
#
# 狙った敵の周囲の敵に25~50の乱数ダメージを与える
#
# @within function asset:artifact/1413.lighter/trigger/attack

# 演出
    execute at @s run particle small_flame ~ ~0.8 ~ 0.25 0.4 0.25 0.02 12 normal @a
    execute at @s run particle smoke ~ ~1.2 ~ 0.15 0.2 0.15 0.01 4 normal @a
    execute at @s run playsound block.fire.ambient player @a ~ ~ ~ 0.4 1.4 0

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 25..50
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
