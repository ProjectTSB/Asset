#> asset:object/1219.font_animation/summon.m
#
# 召喚位置にフレーム0の表示を生成
#
# @within function asset:object/alias/1219/summon

# 字形の送り幅48に幅18の空白を足して64px画像の中心を召喚位置に合わせる
    $summon text_display ~ ~ ~ {Tags:["ObjectInit"],billboard:"center",alignment:"center",brightness:{sky:15,block:15},background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[$(Scale)f,$(Scale)f,1f]},text:'[{"text":"0","font":"object/1219"},{"text":"\\u0018","font":"space"}]'}
