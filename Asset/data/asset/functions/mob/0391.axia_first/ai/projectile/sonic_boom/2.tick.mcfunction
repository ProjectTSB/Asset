#> asset:mob/0391.axia_first/ai/projectile/sonic_boom/2.tick
#
# 斬撃エフェクト Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコアが1以上なら可視化
    execute if score @s AV.ProjectileTick matches 1.. run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711731},CustomModelData:20356}}

# スコアが2以上なら変更
    execute if score @s AV.ProjectileTick matches 2.. run data modify entity @s item.tag.CustomModelData set value 20357

# スコアが3以上なら変更
    execute if score @s AV.ProjectileTick matches 3.. run data modify entity @s item.tag.CustomModelData set value 20358

# スコアが4以上なら変更
    execute if score @s AV.ProjectileTick matches 4.. run data modify entity @s item.tag.CustomModelData set value 20359

# スコアが5以上なら変更
    execute if score @s AV.ProjectileTick matches 5.. run data modify entity @s item.tag.CustomModelData set value 20360

# スコアが6以上なら変更
    execute if score @s AV.ProjectileTick matches 6.. run data modify entity @s item.tag.CustomModelData set value 20361

# スコアが7以上なら変更
    execute if score @s AV.ProjectileTick matches 7.. run data modify entity @s item.tag.CustomModelData set value 20362

# スコアが8以上ならキル
    execute if score @s AV.ProjectileTick matches 8 run kill @s

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1
