#> asset:artifact/1034.eiya/trigger/5.damage2
#
# 9段目のダメージ
#
# @within function asset:artifact/1034.eiya/trigger/3.main

# バランス調整で強すぎた場合、基礎火力を下げてほしい
# 弱すぎたら加算MP倍率を上げてほしい

#> Private
# @private
    #declare tag Target

# 基礎火力設定(本来の10倍の値)
    scoreboard players set $BaseDamage Temporary 7000

# ターゲット設定
    tag @e[type=#lib:living,tag=Victim,distance=..6] add Target
    execute positioned ^2 ^ ^0.5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2.5] add Target
    execute positioned ^ ^ ^2.5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ^-2 ^ ^0.5 run tag @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2.5] add Target

# ダメージ設定
    execute store result storage api: Argument.Damage double 0.1 run scoreboard players operation $BaseDamage Temporary += $MP Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $BaseDamage Temporary
    tag @e[type=#lib:living,tag=Target,distance=..10] remove Target
