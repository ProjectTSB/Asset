#> asset:artifact/0797.heartbleed/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0797.heartbleed/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 前方にいる敵にたいしてダメージfunction実行
    execute as @e[type=#lib:living,tag=M5.Victim,distance=..5] run function asset:artifact/0797.heartbleed/trigger/bleed

# 演出
    function asset:artifact/0797.heartbleed/trigger/vfx
