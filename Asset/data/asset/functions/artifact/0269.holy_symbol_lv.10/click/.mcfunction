#> asset:artifact/0269.holy_symbol_lv.10/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/269/click/

# ここから先は神器側の効果の処理を書く
    summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["7H.HolySymbol","Object","Uninterferable"]}
    function asset:artifact/0269.holy_symbol_lv.10/click/recursive
