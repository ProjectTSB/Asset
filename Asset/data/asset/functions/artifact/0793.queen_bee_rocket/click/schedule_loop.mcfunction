#> asset:artifact/0793.queen_bee_rocket/click/schedule_loop
#
# 弾の処理
#
# @within function
#    asset:artifact/0793.queen_bee_rocket/click/
#    asset:artifact/0793.queen_bee_rocket/click/schedule_loop
#    asset:artifact/0793.queen_bee_rocket/rejoin_process

# 火の玉が実行する処理
    execute as @e[type=item_display,tag=M1.Bee] at @s run function asset:artifact/0793.queen_bee_rocket/click/bee

# Scheduleループ
    execute if entity @e[type=item_display,tag=M1.Bee] run schedule function asset:artifact/0793.queen_bee_rocket/click/schedule_loop 1t replace
