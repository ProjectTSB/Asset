#> asset:artifact/0035.malleus_maleficarum/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 次tickのmanager実行予約
    execute if entity @e[type=armor_stand,tag=MalleusMaleficarumIndicator,predicate=asset:artifact/0035.malleus_maleficarum/is_ride_on_enderpearl] run schedule function asset:artifact/0035.malleus_maleficarum/click/3.1.entity_manager 1t replace