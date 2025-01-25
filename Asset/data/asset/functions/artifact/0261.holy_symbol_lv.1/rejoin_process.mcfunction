#> asset:artifact/0261.holy_symbol_lv.1/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=79.HolySymbol,scores={79.HolySymbol=0..}] run schedule function asset:artifact/0261.holy_symbol_lv.1/click/recursive 1t
