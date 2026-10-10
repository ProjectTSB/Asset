#> asset:object/1167.thunderflash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1167/tick

# Delay減算
    execute store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay

# Delayが0なら移動兼攻撃
    execute if data storage asset:context this{Delay:0} run function asset:object/1167.thunderflash/tick/move
    execute if data storage asset:context this{Delay:0} at @s run function asset:object/1167.thunderflash/tick/move
