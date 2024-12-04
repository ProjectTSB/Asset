#> asset:artifact/0078.self_destruct_order/click/count_down
#
#
#
# @within function
#    asset:artifact/0078.self_destruct_order/click/
#    asset:artifact/0078.self_destruct_order/click/count_down
#    asset:artifact/0078.self_destruct_order/click/rejoin_process

scoreboard players add @a[tag=26.Owner] 26.TickCount 1

# 3秒数後実行
    execute as @a[tag=26.Owner,scores={26.TickCount=60..}] run function asset:artifact/0078.self_destruct_order/click/explosion

# 再起処理
    execute if entity @a[tag=26.Owner, limit=1] run schedule function asset:artifact/0078.self_destruct_order/click/count_down 1t