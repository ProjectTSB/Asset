#> asset:artifact/0987.ghost_step/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# Scheduleループ
    execute if entity @e[type=item_display,tag=RF.Bullet,limit=1] run schedule function asset:artifact/0987.ghost_step/click/4.schedule 1t replace
