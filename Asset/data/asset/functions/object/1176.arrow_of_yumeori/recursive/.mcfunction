#> asset:object/1176.arrow_of_yumeori/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1176/recursive

#> Private
# @private
    #declare score_holder $Step

# インクリメント
    execute store result storage asset:context this.StepCount int -1 run data get storage asset:context this.StepCount -1.00000000001

# 0なら1にする
    execute if data storage asset:context this{StepCount:0} run data modify storage asset:context this.StepCount set value 1

# 軌跡
    #execute store result score $Step Temporary run data get storage asset:context this.StepCount
    #execute if score $Step Temporary matches ..20 run particle dust 1 0.973 0.573 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    #execute if score $Step Temporary matches ..20 run particle dust 1 0.973 0.573 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    #execute if score $Step Temporary matches 21..40 run particle dust 1 0.624 0.573 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    #execute if score $Step Temporary matches 21..40 run particle dust 1 0.624 0.573 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    #execute if score $Step Temporary matches 41.. run particle dust 0.988 0.663 1 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    #execute if score $Step Temporary matches 41.. run particle dust 0.988 0.663 1 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    #scoreboard players reset $Step Temporary

    # particle wax_off ^ ^ ^0.25 0 0 0 0 1
    # particle wax_off ^ ^ ^0.00 0 0 0 0 1

    execute store result score $Step Temporary run data get storage asset:context this.StepCount
    execute if score $Step Temporary matches ..20 run particle dust 100000000 100000000 1 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    execute if score $Step Temporary matches ..20 run particle dust 100000000 100000000 1 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    execute if score $Step Temporary matches 21..40 run particle dust 100000000 1 1 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    execute if score $Step Temporary matches 21..40 run particle dust 100000000 1 1 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    execute if score $Step Temporary matches 41.. run particle dust 100000000 1 100000000 1.3 ^ ^ ^ 0 0 0 0 1 normal @a
    execute if score $Step Temporary matches 41.. run particle dust 100000000 1 100000000 1.3 ^ ^ ^-0.25 0 0 0 0 1 normal @a
    scoreboard players reset $Step Temporary

# 色を変える
    execute if data storage asset:context this{StepCount:20} run data modify entity @s item.tag.display.color set value 16745353
    execute if data storage asset:context this{StepCount:40} run data modify entity @s item.tag.display.color set value 16760318

# 演出 (仮)
    execute if data storage asset:context this{StepCount: 0} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/yellow
    execute if data storage asset:context this{StepCount:10} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/yellow
    execute if data storage asset:context this{StepCount:20} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/red
    execute if data storage asset:context this{StepCount:30} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/red
    execute if data storage asset:context this{StepCount:40} run function asset:object/1176.arrow_of_yumeori/recursive/vfx/pink
