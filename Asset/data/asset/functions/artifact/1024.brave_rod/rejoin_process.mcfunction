#> asset:artifact/1024.brave_rod/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @p[scores={SG.Wait=0..}] run schedule function asset:artifact/1024.brave_rod/click/combo/tick 1t
