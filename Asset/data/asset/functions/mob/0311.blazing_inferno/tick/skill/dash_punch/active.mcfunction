#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/active
#
# 殴り抜ける
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick


# 円移動停止
    tag @s remove 8N.RailMove
    tag @s remove 8N.PlayerFacing

# サウンド
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2 2
