#> asset:artifact/1137.over_pulse_headgear/attack_melee/range/other
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/attack_melee/range/

# ダメージを与える
    data modify storage api: Argument.Damage set value 300
    execute as @p[tag=this] run function api:damage/modifier_continuation
    function api:damage/

# 攻撃済みタグをつける
    tag @s add VL.AttackTarget
