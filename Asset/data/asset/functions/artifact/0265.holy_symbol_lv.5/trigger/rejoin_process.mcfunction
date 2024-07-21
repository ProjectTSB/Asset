#> asset:artifact/0265.holy_symbol_lv.5/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=7D.HolySymbol,scores={7D.HolySymbol=0..}] run schedule function asset:artifact/0265.holy_symbol_lv.5/trigger/recursive 1t
