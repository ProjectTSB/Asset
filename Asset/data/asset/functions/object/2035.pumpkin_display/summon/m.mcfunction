#> asset:object/2035.pumpkin_display/summon/m
#
#
#
# @within function asset:object/2035.pumpkin_display/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,billboard:"vertical",item:{id:"carved_pumpkin",Count:1b,tag:{CustomModelData:$(CMD)}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0f,0.0f]}}
