#> asset:object/0005.slash_effect_abs/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/5/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {interpolation_duration:0,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.1f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:20353}}}

# 独自のInit処理を行う
    function asset:object/0005.slash_effect_abs/summon/init

# 実装フラグを立てる
data modify storage asset:object Implement set value true
