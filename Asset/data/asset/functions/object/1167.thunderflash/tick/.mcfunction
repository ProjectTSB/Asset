#> asset:object/1167.thunderflash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1167/tick

# Tick減算
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick

# 攻撃
    execute if data storage asset:context this{Tick:0} run function asset:object/1167.thunderflash/tick/attack
