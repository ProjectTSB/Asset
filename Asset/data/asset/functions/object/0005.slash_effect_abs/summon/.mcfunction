#> asset:object/0005.slash_effect_abs/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/5/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {interpolation_duration:0,Tags:["ObjectInit"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.1f]}}

# アイテムディスプレイに表示するItemをFieldから代入する
    data modify entity @e[type=item_display,tag=ObjectInit,distance=..0.01,limit=1] item set from storage asset:context this.item

# 初期設定を行う（一時ストレージからもってくる）
    execute unless data storage asset:temp 5.Color run data modify storage asset:temp 5.Color set value 0
    execute unless data storage asset:temp 5.Second run data modify storage asset:temp 5.Second set value 10
    execute unless data storage asset:temp 5.Scale run data modify storage asset:temp 5.Scale set value 5f
    data modify entity @e[type=item_display,tag=ObjectInit,distance=..0.01,limit=1] item.tag.display.color set from storage asset:temp 5.Color
    execute store result score @e[type=item_display,tag=ObjectInit,distance=..0.01] General.Object.Tick run data get storage asset:temp 5.Second -1
    data modify storage asset:object Field.Scale set from storage asset:temp 5.Scale

# リセット
    data remove storage asset:temp 5

# タグ付け
    tag @e[type=item_display,tag=ObjectInit,distance=..0.01] add 5.SlashEffectInit
    tag @e[type=item_display,tag=ObjectInit,distance=..0.01] add 5.Invisible

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
