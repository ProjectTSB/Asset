#> asset:artifact/0001.book_of_all-seeing/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1/click/

    playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1
    playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 0.7
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1

# 表示処理
    tellraw @s [{"text":"\n[ ","color":"white"},{"selector":"@e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1]"},{"text":" ]\n","color":"white"}]
    execute as @e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1] run function asset:artifact/0001.book_of_all-seeing/click/print_defense_messages

# リセット
    tag @e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1] remove 01.Target
