#> asset:mob/0264.dark_summoner/tick/cast_finish
#
# 詠唱終了
#
# @within function
#   asset:mob/0264.dark_summoner/tick/
#   asset:mob/0264.dark_summoner/tick/casting

# リセット
    scoreboard players reset @s 7C.Attack
    tag @s remove 7C.CastStart
    tag @s remove 7C.Teleported

# ポーズ変更
    item replace entity @s armor.head with stick{CustomModelData:20214}
