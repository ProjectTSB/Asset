#> asset:artifact/0908.staff_of_homa/trigger/damage
#
#
#
# @within function asset:artifact/0908.staff_of_homa/trigger/3.main

# 最大体力を取得
    function api:modifier/max_health/get

# 体力が50%以下か否かで最大体力によるダメージボーナスを調整する
    execute if entity @s[tag=!HPLess50Per] store result score $P8.Damage Temporary run data get storage api: Return.MaxHealth 0.8
    execute if entity @s[tag=HPLess50Per] store result score $P8.Damage Temporary run data get storage api: Return.MaxHealth 1.8

# 基礎ダメージ
    scoreboard players add $P8.Damage Temporary 120

# 5段目はダメージを半分にする
    execute if score @s P8.AttackCount matches 5 run scoreboard players operation $P8.Damage Temporary /= $2 Const

# ダメージ
    execute store result storage api: Argument.Damage int 1.0 run scoreboard players get $P8.Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
