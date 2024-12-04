#> asset:artifact/0265.holy_symbol_lv.5/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=7D.HolySymbol,scores={7D.HolySymbol=0..}] run schedule function asset:artifact/0265.holy_symbol_lv.5/click/recursive 1t
