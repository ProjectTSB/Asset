#> asset:artifact/0431.weather_lock_cane/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# リログ時、効果が終わっていた場合
    execute unless data storage asset:temp BZ as @a if score @s BZ.Dimension matches 0.. run function asset:artifact/0431.weather_lock_cane/click/weather/clear

# リログ時、効果をもらっていない場合
    execute if data storage asset:temp BZ as @a unless score @s BZ.Dimension matches 0.. run function asset:artifact/0431.weather_lock_cane/click/weather/
