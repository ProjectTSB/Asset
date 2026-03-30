#> asset:object/2260.gem_attack_drone/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2260/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit","CO.Object","2260.Phase.Start"]}
