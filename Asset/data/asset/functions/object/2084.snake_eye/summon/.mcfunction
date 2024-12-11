#> asset:object/2084.snake_eye/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2084/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],item:{id:"minecraft:slime_block",Count:1b},teleport_duration:1}
