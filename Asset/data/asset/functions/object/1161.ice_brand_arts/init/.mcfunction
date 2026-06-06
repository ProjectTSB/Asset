#> asset:object/1161.ice_brand_arts/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1161/init

# 個別の初期化処理 着地カウンター設定
    scoreboard players set @s 1161.Land 0
# 0〜5の乱数を生成し、スコアに保存(武器種決定)
    execute store result score @s 1161.Kind run random value 0..5
    scoreboard players operation #temp Temporary = @s 1161.Kind
    execute on passengers if entity @s[type=interaction,tag=AutoKillWhenDieVehicle,tag=ProcessCommonTag] run scoreboard players operation @s 1161.Kind = #temp Temporary
    scoreboard players reset * Temporary
# 見た目変更
    # execute if score @s 1161.Kind matches 0 run data modify entity @s item.tag.CustomModelData set value 2
    # execute if score @s 1161.Kind matches 1 run data modify entity @s item.tag.CustomModelData set value 2
    # execute if score @s 1161.Kind matches 2 run data modify entity @s item.tag.CustomModelData set value 2
    # execute if score @s 1161.Kind matches 3 run data modify entity @s item.tag.CustomModelData set value 2
    # execute if score @s 1161.Kind matches 4 run data modify entity @s item.tag.CustomModelData set value 2
    # execute if score @s 1161.Kind matches 5 run data modify entity @s item.tag.CustomModelData set value 2
# 見た目変更(動作確認用)
    execute if score @s 1161.Kind matches 0 run data modify entity @s item.id set value "minecraft:diamond_axe"
    execute if score @s 1161.Kind matches 1 run data modify entity @s item.id set value "minecraft:diamond_pickaxe"
    execute if score @s 1161.Kind matches 2 run data modify entity @s item.id set value "minecraft:diamond_sword"
    execute if score @s 1161.Kind matches 3 run data modify entity @s item.id set value "minecraft:iron_sword"
    execute if score @s 1161.Kind matches 4 run data modify entity @s item.id set value "minecraft:diamond_shovel"
    execute if score @s 1161.Kind matches 5 run data modify entity @s item.id set value "minecraft:diamond_hoe"

    
