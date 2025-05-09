#> asset:object/2048.wave_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2048/init

# スピード関連を設定
    data modify storage asset:context this.Speed set value 1
    data modify storage asset:context this.Range set value 250
    data modify storage asset:context this.MovePerStep set value 0.5

# KillTickを設定
    execute store result score @s 2048.KillTick run data get storage asset:context this.KillTick

# 継承
    function asset:object/super.init
