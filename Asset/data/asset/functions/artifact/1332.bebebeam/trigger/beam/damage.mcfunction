#> asset:artifact/1332.bebebeam/trigger/beam/damage
#
#
#
# @within function asset:artifact/1332.bebebeam/trigger/beam/recursive

# 属性設定
    execute if score @s 110.Element matches 0 run data modify storage api: Argument.ElementType set value "Fire"
    execute if score @s 110.Element matches 1 run data modify storage api: Argument.ElementType set value "Water"
    execute if score @s 110.Element matches 2 run data modify storage api: Argument.ElementType set value "Thunder"

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 60..80
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset
