#> asset:object/1090.cosmo_text/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1090/summon

# 元となるEntityを召喚する
    summon text_display ~ ~ ~ {billboard:"center",default_background:0b,shadow:0b,alignment:"center",Tags:["ObjectInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},text:'[{"text":"WARNING","color":"aqua","bold":true,"underlined":true},{"text":"\\n(๑˃́ꇴ˂̀๑)","color":"white","bold":false,"italic":false,"underlined":false},{"text":"\\n視界が吹き飛びます！","color":"white","bold":false,"italic":false},{"text":"\\nWARNING","color":"aqua","bold":true,"underlined":true}]'}
