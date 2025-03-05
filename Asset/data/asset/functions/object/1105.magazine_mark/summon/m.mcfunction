#> asset:object/1105.magazine_mark/summon/m
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/1105.magazine_mark/summon/

# 召喚
    $summon text_display ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"！？","bold":true}'}
