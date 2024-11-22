#> asset:artifact/1137.over_pulse_headgear/attack_melee/range/
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/attack_melee/

# VFX
    function asset:artifact/1137.over_pulse_headgear/attack_melee/range/vfx

# 自分にダメージ
    data modify storage api: Argument.Damage set value 1000
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/

# 周囲の敵にダメージ
    execute as @e[type=#lib:living,tag=Enemy,tag=!Victim,tag=!VL.AttackTarget,distance=..5] run function asset:artifact/1137.over_pulse_headgear/attack_melee/range/other

# リセット
    function api:damage/reset
