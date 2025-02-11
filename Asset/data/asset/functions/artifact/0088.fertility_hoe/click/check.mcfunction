#> asset:artifact/0088.fertility_hoe/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/88/click/check

#> private
# @private
    #declare score_holder $BoneMeal

# 破壊可能エリアでのみ使用可能
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here

# アイテム確認
    execute store result score $BoneMeal Temporary run clear @s bone_meal 0
    execute if score $BoneMeal Temporary matches ..7 run tag @s remove CanUsed
    execute if score $BoneMeal Temporary matches ..7 run function lib:message/artifact/dont_have_require_items

# 周囲のブロック判定 //y座標によって場合分け //1層ずつ判定とっていくよ
    # 取得
        scoreboard players set $AroundCrops Temporary 0
        execute positioned ~ ~-4 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~-3 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~-2 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~-1 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~ ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~1 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~2 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~3 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer
        execute positioned ~ ~4 ~ run function asset:artifact/0088.fertility_hoe/click/check_layer

    # なかったら
        execute if entity @s[tag=CanUsed] if score $AroundCrops Temporary matches 0 run tellraw @s [{"text": "近くに作物がある必要があります。"}]
        execute if score $AroundCrops Temporary matches 0 run tag @s remove CanUsed

# リセット
    scoreboard players reset $BoneMeal Temporary
    scoreboard players reset $AroundCrops Temporary
