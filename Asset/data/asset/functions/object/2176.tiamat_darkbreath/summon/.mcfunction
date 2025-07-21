#> asset:object/2176.tiamat_darkbreath/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2176/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit","BE.Object","2176.Root"]}
