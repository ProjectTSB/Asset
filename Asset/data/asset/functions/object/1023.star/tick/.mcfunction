#> asset:object/1023.star/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1023/tick

# StartDelay 減少
    execute store result storage asset:context this.StartDelay int 0.9999999999 run data get storage asset:context this.StartDelay 1

# vfx
    execute as @a[distance=..32] facing entity @s eyes positioned ^ ^ ^-0.05 run function asset:object/1023.star/tick/vfx

# 前方の敵に誘導する
    execute if data storage asset:context this{StartDelay:0} run function asset:object/1023.star/tick/chase

# super.tick
    execute if data storage asset:context this{StartDelay:0} at @s run function asset:object/super.tick
