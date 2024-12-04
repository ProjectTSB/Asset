#> asset:artifact/0600.xtal/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# リジョイン処理
    execute if entity @a[scores={GO.Time=1..}] run schedule function asset:artifact/0600.xtal/attack_melee/schedule 1t replace