#> asset:object/2274.gem_smoke/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2274/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:stone_bricks",Count:1b},teleport_duration:1}
