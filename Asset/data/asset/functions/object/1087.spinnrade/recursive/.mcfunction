#> asset:object/1087.spinnrade/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1087/recursive

# ホーミング用の遅延
    execute store result storage asset:context this.HomingDelay int 0.9999999999 run data get storage asset:context this.HomingDelay 1

# 前方にいる一番近い敵をターゲットする
    execute if data storage asset:context this{HomingDelay:0} run function asset:object/1087.spinnrade/recursive/homing/

# 演出
    particle dust 1 0.761 0.831 1 ~ ~ ~ 0 0 0 0 1
    execute if predicate lib:random_pass_per/20 run particle minecraft:cherry_leaves ~ ~ ~ 0 0 0 1 1

# super 呼び出し
    execute at @s run function asset:object/super.method
