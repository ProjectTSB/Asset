#> asset:artifact/1570.pile_of_accumulated_dust/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1570.pile_of_accumulated_dust/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# vfx
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..160,sort=random,limit=1] run function asset:artifact/1570.pile_of_accumulated_dust/trigger/vfx

# ダメージ
    data modify storage api: Argument.Damage set value 3000.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..160,sort=random,limit=1] run function api:damage/
# リセット
    function api:damage/reset
