#> asset:artifact/0269.holy_symbol_lv.10/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=7H.HolySymbol,scores={7H.HolySymbol=0..}] run schedule function asset:artifact/0269.holy_symbol_lv.10/click/recursive 1t
