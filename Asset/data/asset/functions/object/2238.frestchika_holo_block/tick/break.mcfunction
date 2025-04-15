#> asset:object/2238.frestchika_holo_block/tick/break
#
#
#
# @within function asset:object/2238.frestchika_holo_block/tick/

# 自分の場所にあるブロックを壊しちゃう
    execute unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

# キル
    kill @s
