#> asset:artifact/1215.sharpened_diamond_axe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1215.sharpened_diamond_axe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ダメージ
    data modify storage api: Argument.Damage set value 2450.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
