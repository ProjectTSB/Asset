#> asset:artifact/0991.soul_mate/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @a[scores={RJ.Cooldown=1..},limit=1] run schedule function asset:artifact/0991.soul_mate/keep_sneak_3s/schedule 1t replace
