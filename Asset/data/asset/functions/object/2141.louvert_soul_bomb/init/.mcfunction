#> asset:object/2141.louvert_soul_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2141/init

# テキストディスプレイ召喚
    summon text_display ~ ~ ~ {Tags:["2141.TextInit"],billboard:"center",default_background:0b,see_through:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[2f,2f,2f]},text:'{"text":"10","font":"magic"}',background:16777215}
    ride @e[type=text_display,tag=2141.TextInit,distance=..0.01,limit=1] mount @s
    tag @e[type=text_display,tag=2141.TextInit,distance=..0.01,limit=1] remove 2141.TextInit

# ランダムな方向を向かせる
    tp @s ~ ~ ~ ~ 0
    execute store result entity @s Rotation[0] float 0.01 run random value 0..36000
