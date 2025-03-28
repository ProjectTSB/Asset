#> asset:artifact/1207.quadrainbow_icequality/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/2.check_condition

#> target
# @within
#   function asset:artifact/1207.quadrainbow_icequality/trigger/**
    #declare tag XJ.Target

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ターゲット指定　
    function asset:artifact/1207.quadrainbow_icequality/trigger/select_target

# 攻撃処理
    execute as @e[type=#lib:living,tag=XJ.Target,distance=..5,limit=1] at @s run function asset:artifact/1207.quadrainbow_icequality/trigger/attack

# reset
    tag @e[type=#lib:living,tag=XJ.Target,distance=..5] remove XJ.Target
