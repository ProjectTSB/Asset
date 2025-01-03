#> asset:artifact/1034.eiya/trigger/4.damage
#
# ダメージ処理部
#
# @within function asset:artifact/1034.eiya/trigger/3.main

# バランス調整で強すぎた場合、基礎火力を下げてほしい
# 弱すぎたら加算MP倍率を上げてほしい
# 基礎火力 + 現在MP×1.2

# 基礎火力設定(本来の10倍の値を設定すること)
    scoreboard players set $BaseDamage Temporary 2500

# ダメージ設定
    execute store result storage lib: Argument.Damage double 0.1 run scoreboard players operation $BaseDamage Temporary += $MP Temporary
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function lib:damage/
    function lib:damage/reset

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $BaseDamage Temporary
