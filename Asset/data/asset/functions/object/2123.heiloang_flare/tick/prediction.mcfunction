#> asset:object/2123.heiloang_flare/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2123.heiloang_flare/tick/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 77
    execute positioned ~ ~ ~ run function api:object/summon

# 予告線表示
    # summon text_display ~-0.5 ~-0.5 ~-0.5 {Tags:["2123.Text"],text:'{"text":">>","color":"#ffcf80","bold":true}',text_opacity:255,background:16711680,alignment:"right",line_width:210,transformation:[0.0000f,17.0000f,0.0000f,-2.8125f,0.0000f,-0.0000f,1.0000f,0.6250f,6.5000f,-0.0000f,-0.0000f,3.8125f,0.0000f,0.0000f,0.0000f,1.0000f]}
    summon text_display ~-0.5 ~-0.5 ~-0.5 {Tags:["2123.Text"],text:'{"text":">>","color":"#ffcf80","bold":true}',text_opacity:255,background:16711680,alignment:"right",line_width:210,transformation:[0.0000f,17.0000f,0.0000f,-2.8125f,0.0000f,-0.0000f,1.0000f,0.1250f,6.5000f,-0.0000f,-0.0000f,3.8125f,0.0000f,0.0000f,0.0000f,1.0000f]}
    tp @e[type=text_display,tag=2123.Text,tag=!2123.Text.Ride,sort=nearest,limit=1] ~ ~ ~ ~ 0
    ride @e[type=text_display,tag=2123.Text,tag=!2123.Text.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2123.Text.Ride
