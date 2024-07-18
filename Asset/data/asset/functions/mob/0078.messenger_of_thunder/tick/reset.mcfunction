#> asset:mob/0078.messenger_of_thunder/tick/reset
#
# リセット
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/**/1

# リセット
    scoreboard players set @s 26.Tick -60

# ハード以上 & 体力が半分以下 & 使用していたスキルが通常の雷か偏差の雷なら
# 次のスキルをすぐ発動できるようにする
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=26.HPLess50Per] unless entity @s[tag=!26.Thunder,tag=!26.PredictThunder] run scoreboard players set @s 26.Tick -5

# スキル関連のTagを全て削除
    tag @s remove 26.Thunder
    tag @s remove 26.ThunderCurtain
    tag @s remove 26.ReturnThunder
    tag @s remove 26.TeleportSpread
    tag @s remove 26.PredictThunder
    tag @s remove 26.CrossThunder
    tag @s remove 26.NotFirst
