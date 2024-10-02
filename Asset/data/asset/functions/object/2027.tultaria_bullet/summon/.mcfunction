#> asset:object/2027.tultaria_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2027/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {billboard:"center",Tags:["ObjectInit"],brightness:{sky:15,block:15},item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_data":{20370}}}}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
