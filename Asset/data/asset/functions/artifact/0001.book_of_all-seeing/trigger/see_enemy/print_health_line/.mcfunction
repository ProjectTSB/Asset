#> asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_health_line/
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/

# 取得
    function api:mob/get_max_health
    function api:mob/get_health
# 移しつつ整数にする
    execute store result storage asset:temp 01.Args.MaxHealth int 1 run data get storage api: Return.MaxHealth
    execute store result storage asset:temp 01.Args.Health int 1 run data get storage api: Return.Health
# 表示する
    function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_health_line/print.m with storage asset:temp 01.Args
