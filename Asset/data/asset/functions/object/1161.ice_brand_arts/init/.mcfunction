#> asset:object/1161.ice_brand_arts/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1161/init
# @private
    #declare score_holder $1161.temp

# 個別の初期化処理 着地カウンター設定
    scoreboard players set @s 1161.Land 0
# 0〜5の乱数を生成し、スコアに保存(武器種決定)
    execute store result score @s 1161.Kind run random value 0..5
    scoreboard players operation $1161.temp Temporary = @s 1161.Kind
    execute on passengers if entity @s[type=interaction,tag=AutoKillWhenDieVehicle,tag=ProcessCommonTag] run scoreboard players operation @s 1161.Kind = $1161.temp Temporary
    scoreboard players reset $1161.temp Temporary
# 見た目変更
    execute if score @s 1161.Kind matches 0 run data modify entity @s item.tag.CustomModelData set value 1457
    execute if score @s 1161.Kind matches 1 run data modify entity @s item.tag.CustomModelData set value 1458
    execute if score @s 1161.Kind matches 2 run data modify entity @s item.tag.CustomModelData set value 1459
    execute if score @s 1161.Kind matches 3 run data modify entity @s item.tag.CustomModelData set value 1460
    execute if score @s 1161.Kind matches 4 run data modify entity @s item.tag.CustomModelData set value 1461
    execute if score @s 1161.Kind matches 5 run data modify entity @s item.tag.CustomModelData set value 1462
# 見た目変更(個別操作)
    execute if score @s 1161.Kind matches 3 run data modify entity @s transformation.left_rotation set value [0f,0f,1f,0f]
    execute if score @s 1161.Kind matches 4 run data modify entity @s item.id set value "minecraft:carrot_on_a_stick"
    execute if score @s 1161.Kind matches 5 run data modify entity @s item.id set value "minecraft:carrot_on_a_stick"
