#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point1
#
# 雷を落とす処理1
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/

# AECを召喚して拡散するを5回繰り返す
    function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
    function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
    function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
    function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
    function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2

# ハードかつ体力半分以下で追加で2本召喚する
    execute if entity @s[tag=26.HPLess50Per] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
    execute if entity @s[tag=26.HPLess50Per] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point2
