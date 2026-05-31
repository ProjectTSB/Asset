#> asset:object/2290.sharkboss_water_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2290/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,item:{id:"minecraft:blue_stained_glass",Count:1b}}
