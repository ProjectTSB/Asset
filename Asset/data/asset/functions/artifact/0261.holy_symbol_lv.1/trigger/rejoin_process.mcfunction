#> asset:artifact/0261.holy_symbol_lv.1/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

execute if entity @e[type=area_effect_cloud,tag=79.HolySymbol,scores={79.HolySymbol=0..}] run schedule function asset:artifact/0261.holy_symbol_lv.1/trigger/recursive 1t
