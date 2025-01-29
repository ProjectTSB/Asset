#> asset:artifact/1137.over_pulse_headgear/attack_melee/
#
# 近接攻撃時の処理
#
# @within function asset:artifact/alias/1137/attack_melee/

#> private
# @within function asset:artifact/1137.over_pulse_headgear/attack_melee/**
    #declare tag VL.AttackTarget

# ターゲットそれぞれに対して実行する
    execute as @e[type=#lib:living,tag=Enemy,tag=Victim,distance=..10] at @s run function asset:artifact/1137.over_pulse_headgear/attack_melee/range/

# リセット
    execute as @e[tag=VL.AttackTarget,distance=..15] run tag @s remove VL.AttackTarget
