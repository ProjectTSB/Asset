#> asset:artifact/1651.rune_blaster/keep_using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1651.rune_blaster/keep_using_item/2.check_condition

# 現tickを取得しておく
    execute store result score @s 19V.LatestUseTick run data get storage global Time

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ビーム
    execute anchored eyes positioned ^ ^-0.35 ^0.25 if block ^ ^ ^0.25 #lib:no_collision/ run function asset:artifact/1651.rune_blaster/keep_using_item/beam/
