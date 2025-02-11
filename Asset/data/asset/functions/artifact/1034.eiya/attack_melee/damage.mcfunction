#> asset:artifact/1034.eiya/attack_melee/damage
#
# ダメージ処理部
#
# @within function asset:artifact/1034.eiya/attack_melee/

# バランス調整で強すぎた場合、基礎火力を下げてほしい
# 弱すぎたら加算MP倍率を上げてほしい
# 基礎火力 + 現在MP×1.2

# 基礎火力設定(本来の10倍の値を設定すること)
    scoreboard players set $Damage Temporary 2500

# ダメージ設定
    execute store result storage api: Argument.Damage double 0.1 run scoreboard players operation $Damage Temporary += $MP Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $Damage Temporary
