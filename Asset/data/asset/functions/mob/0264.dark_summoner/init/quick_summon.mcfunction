#> asset:mob/0264.dark_summoner/init/quick_summon
#
# 即召喚するための処理
#
# @within function asset:mob/0264.dark_summoner/init/

# ポーズ変更
    item replace entity @s armor.head with stick{CustomModelData:20215}

# 自身にTagを付与
    tag @s add 7C.CastStart

# スコア設定
    scoreboard players set @s 7C.Attack 75
