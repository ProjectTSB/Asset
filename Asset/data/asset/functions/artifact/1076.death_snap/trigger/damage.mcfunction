#> asset:artifact/1076.death_snap/trigger/damage
#
#
#
# @within function asset:artifact/1076.death_snap/trigger/shot


# ダメージ
    data modify storage api: Argument.Damage set value 175.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this,distance=..100] run function api:damage/modifier
    function api:damage/
# リセット
    function api:damage/reset

# カウント減らす
    scoreboard players remove $TW.Count Temporary 1
