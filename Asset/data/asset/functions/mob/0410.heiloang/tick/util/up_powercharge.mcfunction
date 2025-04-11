#> asset:mob/0410.heiloang/tick/util/up_powercharge
#
# 汎用処理 パワーチャージ段階を1上げる
#
# @within asset:mob/0410.heiloang/tick/event/**

# スコア増加
    scoreboard players add @s BE.Charge.Count 1

# 通知
    execute if score @s BE.Charge.Count matches 1 run tellraw @a[distance=..100] [{"text":"【黒龍の光輪が輝きを増した！】"}]
    execute if score @s BE.Charge.Count matches 2 run tellraw @a[distance=..100] [{"text":"【黒龍の光輪が強く輝き始めた！】"}]
    execute if score @s BE.Charge.Count matches 3.. run tellraw @a[distance=..100] [{"text":"【黒龍の光輪が激しく輝き始めた！】"}]
