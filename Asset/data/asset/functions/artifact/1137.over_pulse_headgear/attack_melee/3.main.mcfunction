#> asset:artifact/1137.over_pulse_headgear/attack_melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1137.over_pulse_headgear/attack_melee/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ターゲット 1 体に対して実行する
    execute as @e[type=#lib:living,tag=Enemy,tag=Victim,distance=..10,sort=random,limit=1] at @s run function asset:artifact/1137.over_pulse_headgear/attack_melee/range/
