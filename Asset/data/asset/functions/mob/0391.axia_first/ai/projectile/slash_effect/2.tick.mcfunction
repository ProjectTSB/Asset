#> asset:mob/0391.axia_first/ai/projectile/slash_effect/2.tick
#
# 斬撃エフェクト Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコアが正かつ透明状態なら可視化
    execute if score @s AV.ProjectileTick matches 1.. if entity @s[tag=AV.SlashEffectInbisible] run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711731},CustomModelData:20353}}
    execute if score @s AV.ProjectileTick matches 1.. if entity @s[tag=AV.SlashEffectInbisible] run tag @s remove AV.SlashEffectInbisible

# スコア反転
    execute if score @s AV.ProjectileTick matches ..-1 run scoreboard players operation @s AV.ProjectileTick *= $-1 Const

# スコアが3以下なら切り替え
    execute if score @s AV.ProjectileTick matches 3 run data modify entity @s item.tag.CustomModelData set value 20354

# スコアが2以下なら切り替え
    execute if score @s AV.ProjectileTick matches 2 run data modify entity @s item.tag.CustomModelData set value 20355

# スコアが1以下ならキル
    execute if score @s AV.ProjectileTick matches 1 run kill @s

# スコア減少
    scoreboard players remove @s AV.ProjectileTick 1
