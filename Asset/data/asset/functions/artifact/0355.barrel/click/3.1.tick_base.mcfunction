#> asset:artifact/0355.barrel/click/3.1.tick_base
#
# 全体のtick
#
# @within function asset:artifact/0355.barrel/click/**

# 樽ごとに実行
    execute as @e[type=armor_stand,tag=9V.Barrel] at @s run function asset:artifact/0355.barrel/click/barrel/tick

# 樽が存在するとき次のtickを予約
    execute if entity @e[type=armor_stand,tag=9V.Barrel,limit=1] run schedule function asset:artifact/0355.barrel/click/3.1.tick_base 1t replace
