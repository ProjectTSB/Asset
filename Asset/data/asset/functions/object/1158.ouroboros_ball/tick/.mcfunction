#> asset:object/1158.ouroboros_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1158/tick

# 軌跡のエフェクト
    particle dust 0.204 0.09 0.62 1 ~ ~ ~ 0 0 0 0 1

# 回転のInterval
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} run function asset:object/1158.ouroboros_ball/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 2

# super.tick
    execute at @s run function asset:object/super.tick
