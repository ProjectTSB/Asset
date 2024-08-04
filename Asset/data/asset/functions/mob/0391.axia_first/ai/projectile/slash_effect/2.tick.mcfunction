#> asset:mob/0391.axia_first/ai/projectile/slash_effect/2.tick
#
# 斬撃エフェクト Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1

# スコアが2以上なら切り替え
    execute if score @s AV.ProjectileTick matches 2 run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711731},CustomModelData:20353}}

# スコアが4以上なら切り替え
    execute if score @s AV.ProjectileTick matches 4 run data modify entity @s item.tag.CustomModelData set value 20354

# スコアが5以上なら切り替え
    execute if score @s AV.ProjectileTick matches 5 run data modify entity @s item.tag.CustomModelData set value 20355

# スコアが6以上ならキル
    execute if score @s AV.ProjectileTick matches 6 run kill @s
