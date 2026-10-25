#> asset:artifact/1265.thunder_ray/trigger/thunder
#
#
#
# @within function asset:artifact/1265.thunder_ray/trigger/recursive

# 召喚済みかチェック
    tag @s add Check

# 演出用
    particle dust 1 1 0.4 1.3 ~ ~4 ~ 0.25 3 0.25 0 200 normal @a
    particle firework ~ ~ ~ 0 0 0 0.3 80 normal @a
    particle wax_off ~ ~6 ~ 0.4 5 0.4 0 20 normal @a
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 2

# ダメージ
    data modify storage api: Argument.Damage set value 60f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset
