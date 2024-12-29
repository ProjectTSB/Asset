#> asset:object/2130.heiloang_circle_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2130/init

# 消滅時間設定
    execute store result score @s 2130.RemoveTimer store result score @s 2130.KillTimer run data get storage asset:context this.RemoveTimer
    scoreboard players add @s 2130.KillTimer 30
