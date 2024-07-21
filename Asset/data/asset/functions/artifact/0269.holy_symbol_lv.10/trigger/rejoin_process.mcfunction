#> asset:artifact/0269.holy_symbol_lv.10/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=7H.HolySymbol,scores={7H.HolySymbol=0..}] run schedule function asset:artifact/0269.holy_symbol_lv.10/trigger/recursive 1t
