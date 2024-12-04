#> asset:artifact/0046.ritual_wand/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/46/click/


# 現在の天気から切り替える天気を取得する
    execute if predicate lib:weather/is_sunny run scoreboard players set @s Temporary 0
    execute if predicate lib:weather/is_raining run scoreboard players set @s Temporary 1
    execute if predicate lib:weather/is_thundering run scoreboard players set @s Temporary 1
# 晴れの時25%の確率で雷雨に切り替え
    execute if predicate lib:weather/is_sunny if predicate lib:random_pass_per/25 run scoreboard players set @s Temporary 2

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 5 0 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.creeper.death player @s ~ ~ ~ 20 0.2

# 天気を切り替える
    execute if score @s Temporary matches 0 run weather rain
    execute if score @s Temporary matches 0 run tellraw @s {"text":"天気が雨に切り替わった"}
    execute if score @s Temporary matches 1 run weather clear
    execute if score @s Temporary matches 1 run tellraw @s {"text":"天気が晴れに切り替わった"}
    execute if score @s Temporary matches 2 run weather thunder
    execute if score @s Temporary matches 2 run tellraw @s {"text":"天気が雷雨に切り替わった"}

# リセット
    scoreboard players reset @s Temporary
