#> asset:object/1176.arrow_of_yumeori/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1176/recursive

# インクリメント
    execute store result storage asset:context this.StepCount int -1 run data get storage asset:context this.StepCount -1.00000000001

# 0なら1にする
    execute if data storage asset:context this{StepCount:0} run data modify storage asset:context this.StepCount set value 1

# 軌跡
    particle dust 1 0.8 0.9 1.3 ~ ~ ~ 0 0 0 0 1
    particle dust 1 0.8 0.9 1.3 ^ ^ ^0.25 0 0 0 0 1

# 演出 (仮)
    # execute if data storage asset:context this{StepCount: 0} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/yellow
    execute if data storage asset:context this{StepCount:10} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/yellow
    execute if data storage asset:context this{StepCount:20} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/red
    execute if data storage asset:context this{StepCount:30} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/red
    execute if data storage asset:context this{StepCount:40} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/pink
