#> asset:object/1023.star/summon/m
#
# マクロで召喚
#
# @input args:
#   Rotation : [float] @ 2
# @within asset:object/1023.star/summon/

# 召喚
    $summon text_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],brightness:{sky:15,block:15},teleport_duration:1,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.2f,1.2f,1.2f],translation:[0f,0f,0f]},text:'{"text":"0","font":"object/1023"}'}
