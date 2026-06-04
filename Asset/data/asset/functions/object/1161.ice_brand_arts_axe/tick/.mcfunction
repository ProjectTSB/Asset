#> asset:object/1161.ice_brand_arts_axe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1161/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute as @s on passengers if data entity @s interaction run function asset:object/1161.ice_brand_arts_axe/pick/

# 落下処理
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if block ~ ~-0.1 ~ air run particle end_rod ~ ~ ~
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
    execute as @s at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run particle block dirt ~ ~ ~ 1 1 1 0 20
    execute as @s at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run playsound item.trident.hit_ground master @a ~ ~ ~ 1 2
    execute as @s at @s if score @s Land matches 0 unless block ~ ~-0.1 ~ air run scoreboard players set @s Land 1

# 消滅処理
    execute at @s[scores={General.Object.Tick=600..}] run particle block packed_ice ~ ~ ~ 0.8 0.8 0.8 0 30
    execute at @s[scores={General.Object.Tick=600..}] run playsound block.glass.break master @a ~ ~ ~ 1 1.4
    kill @s[scores={General.Object.Tick=600..}]
