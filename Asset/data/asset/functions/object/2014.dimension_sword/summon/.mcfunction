#> asset:object/2014.dimension_sword/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2014/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit","2014.DimSword"]}
