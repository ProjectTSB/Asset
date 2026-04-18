#> asset:object/2269.gem_rocket_punch/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2269/init

# 角度を合わせる
    tp @s ~ ~ ~ ~ 90

# 待機時間
    scoreboard players set @s 2269.WaitTime 200
    execute if data storage asset:context this.WaitTime store result score @s 2269.WaitTime run data get storage asset:context this.WaitTime
