#> asset:mob/0078.messenger_of_thunder/tick/3.skill_branch
#
# 分岐してスキルを実行
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1

# 通常の雷落とし
    execute if entity @s[tag=26.Thunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/1

# 雷のカーテン
    execute if entity @s[tag=26.ThunderCurtain] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/1

# 戻ってくる雷(スキル名なに？)
    execute if entity @s[tag=26.ReturnThunder] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1

# tpして翻弄する奴
    execute if entity @s[tag=26.TeleportSpread] run function asset:mob/0078.messenger_of_thunder/tick/skill/teleport_spread/1
