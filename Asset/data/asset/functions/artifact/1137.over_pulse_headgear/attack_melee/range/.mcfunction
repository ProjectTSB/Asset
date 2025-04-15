#> asset:artifact/1137.over_pulse_headgear/attack_melee/range/
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/attack_melee/3.main

#> tag
# @private
    #declare tag VM.This

# タグ付け
    tag @s add VM.This

# VFX
    function asset:artifact/1137.over_pulse_headgear/attack_melee/range/vfx

# 自分にダメージ
    data modify storage api: Argument.Damage set value 1000
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# 自分以外にダメージ
    data modify storage api: Argument.Damage set value 300
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Victim,tag=!VM.This,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    tag @s remove VM.This
