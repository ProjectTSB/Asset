#> asset:artifact/0643.raimei_chestplate/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# タグを持っていれば実行
    execute if entity @a[tag=HV.Full] run schedule function asset:artifact/0643.raimei_chestplate/equip/3.4.loop 1t replace