#> asset:artifact/0870.samurai_blade/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

    execute if entity @a[scores={O6.WaitingTime=1..},limit=1] run schedule function asset:artifact/0870.samurai_blade/click/schedule_loop 1t replace