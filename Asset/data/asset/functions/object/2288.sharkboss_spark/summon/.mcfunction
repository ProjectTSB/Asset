#> asset:object/2288.sharkboss_spark/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2288/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {Tags:["ObjectInit","CD.Spark"],billboard:"center",text:'{"text":"0","font":"object/2288"}',background:0,text:'{"text":"0","font":"object/2288"}',teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]},}
