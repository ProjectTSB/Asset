#> asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/rec
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/*

# rec減算
    scoreboard players remove $rec Temporary 1

# ランダムなoffsetを設定
    execute store result storage asset:temp Args.OffsetX float 0.1 run random value -20..20
    execute store result storage asset:temp Args.OffsetY float 0.1 run random value -5..5
    execute store result storage asset:temp Args.OffsetZ float 0.1 run random value 5..35

# マクロでObject召喚
    function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/summon.m with storage asset:temp Args

# 再帰
    execute if score $rec Temporary matches 1.. run function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/rec
