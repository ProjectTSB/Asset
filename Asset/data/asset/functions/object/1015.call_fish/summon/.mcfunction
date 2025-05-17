#> asset:object/1015.call_fish/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1015/summon

# 元となるEntityを召喚する
    summon cod ~ ~ ~ {Tags:["ObjectInit","Friend","Uninterferable"]}
