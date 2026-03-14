#> asset:artifact/0375.thunder_magic/trigger/damage
#
# ダメージ処理
#
# @within function asset:artifact/0375.thunder_magic/trigger/3.main

# 演出
    execute rotated ~ 0 run function asset:artifact/0375.thunder_magic/trigger/vfx
    particle dust 0.867 0.667 0.161 1 ~ ~2 ~ 0 2.5 0 0 100
    particle minecraft:explosion ~ ~ ~ 0.7 0.1 0.7 0 10
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 40f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..1.8,sort=nearest] run function api:damage/
    function api:damage/reset
