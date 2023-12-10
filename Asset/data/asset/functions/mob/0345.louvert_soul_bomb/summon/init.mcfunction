#> asset:mob/0345.louvert_soul_bomb/summon/init
#
# 初期化処理
#
# @within function asset:mob/0345.louvert_soul_bomb/summon/2.summon

# スコア初期化
    scoreboard players set @s 9L.Tick 0

# テキストディスプレイ召喚
    summon text_display ~ ~ ~ {Tags:["9L.TextInit"],billboard:"center",default_background:0b,see_through:1b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[2f,2f,2f]},text:'{"text":"10","font":"magic"}',background:16777215}
    ride @e[type=text_display,distance=..0.01,limit=1] mount @s

# ランダムな方向を向かせる
    tp @s ~ ~ ~ ~ 0
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/

# リセット
    tag @s remove 9L.Init