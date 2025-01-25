#> asset:artifact/0664.soul_fire_armor/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @s[tag=IG.Fullset] at @s run schedule function asset:artifact/0664.soul_fire_armor/equip/fullset/loop 1t replace