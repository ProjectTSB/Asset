#> asset:artifact/0647.thorn_armor/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループのリスタート
    execute if entity @a[tag=HZ.FullSet,limit=1] run schedule function asset:artifact/0647.thorn_armor/equip/9.loop 1t replace