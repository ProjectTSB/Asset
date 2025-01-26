#> asset:mob/0078.messenger_of_thunder/tick/skill_branch
#
# 分岐してスキルを実行
#
# @within function asset:mob/0078.messenger_of_thunder/tick/

# 通常の雷落とし
    execute if entity @s[tag=26.Thunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/

# 雷のカーテン
    execute if entity @s[tag=26.ThunderCurtain] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/

# リターンサンダー
    execute if entity @s[tag=26.ReturnThunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/

# tpして翻弄する奴
    execute if entity @s[tag=26.TeleportSpread] run function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/

# 偏差雷落とし
    execute if entity @s[tag=26.PredictThunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/

# 十字の雷
    execute if entity @s[tag=26.CrossThunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/
