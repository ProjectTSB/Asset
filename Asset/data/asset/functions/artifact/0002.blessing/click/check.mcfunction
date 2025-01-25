#> asset:artifact/0002.blessing/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/2/click/check

    execute if score @s 02.Trigger matches 0 run tag @s remove CanUsed
    execute if score @s 02.Trigger matches 0 run tellraw @s [{"text":"前回の能力ボーナスが未選択です","color":"red"}]
    execute if score @s 02.Trigger matches 0 run function asset:artifact/0002.blessing/click/show_trigger_chat