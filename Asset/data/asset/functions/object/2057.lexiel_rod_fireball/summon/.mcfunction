#> asset:object/2057.lexiel_rod_fireball/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2057/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {billboard:"fixed",teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:fire_charge",Count:1b}}
