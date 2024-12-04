#> asset:artifact/1043.gamma_ray/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 自身にタグがついている場合スケジュールを予約する
    execute if entity @s[tag=SZ.Cast] run schedule function asset:artifact/1043.gamma_ray/click/4.schedule 1t