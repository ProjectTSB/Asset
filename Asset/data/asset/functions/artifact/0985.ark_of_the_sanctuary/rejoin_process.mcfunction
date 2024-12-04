#> asset:artifact/0985.ark_of_the_sanctuary/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @a[scores={RD.WaitingTime=1..},limit=1] run schedule function asset:artifact/0985.ark_of_the_sanctuary/click/schedule_loop 1t replace
