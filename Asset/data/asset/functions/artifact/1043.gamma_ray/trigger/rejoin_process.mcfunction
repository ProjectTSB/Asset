#> asset:artifact/1043.gamma_ray/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 自身にタグがついている場合スケジュールを予約する
    execute if entity @s[tag=SZ.Cast] run schedule function asset:artifact/1043.gamma_ray/trigger/4.schedule 1t