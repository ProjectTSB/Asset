#> asset:object/1163.ice_brand_arts_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1163/tick


#落下処理
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run particle end_rod ~ ~ ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run particle block dirt ~ ~ ~ 1 1 1 0 20
    execute at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run playsound item.trident.hit_ground master @a ~ ~ ~ 1 2
    execute at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run scoreboard players set @s Land 1
