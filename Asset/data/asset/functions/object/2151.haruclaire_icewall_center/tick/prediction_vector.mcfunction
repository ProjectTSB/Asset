#> asset:object/2151.haruclaire_icewall_center/tick/prediction_vector
#
# Objectのtick時の処理
#
# @within asset:object/2151.haruclaire_icewall_center/tick/

# 予告線表示
    summon text_display ~-0.5 ~-0.5 ~-0.5 {Tags:["2151.Text"],text:'{"text":">>","color":"#fca1ff","bold":true}',text_opacity:255,background:16711680,brightness:{sky:15,block:15},alignment:"right",line_width:210,transformation:[0.0000f,17.0000f,0.0000f,-2.8125f,0.0000f,-0.0000f,1.0000f,0.550f,6.5000f,-0.0000f,-0.0000f,3.8125f,0.0000f,0.0000f,0.0000f,1.0000f]}
    ride @e[type=text_display,tag=2151.Text,tag=!2151.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2151.Ride
    execute on passengers run tp @s ~ ~ ~ ~ 0
