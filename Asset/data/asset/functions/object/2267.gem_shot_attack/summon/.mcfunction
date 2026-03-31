#> asset:object/2267.gem_shot_attack/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2267/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit","CO.Object","2267.Root"]}
