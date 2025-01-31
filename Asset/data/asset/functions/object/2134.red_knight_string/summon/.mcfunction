#> asset:object/2134.red_knight_string/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2134/summon

# 元となるEntityを召喚する
    summon item ~ ~ ~ {Invulnerable:1b,PickupDelay:32767s,NoGravity:1b,Tags:["ObjectInit"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:71}}}
