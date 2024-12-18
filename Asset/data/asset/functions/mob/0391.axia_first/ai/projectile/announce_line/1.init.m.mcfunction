#> asset:mob/0391.axia_first/ai/projectile/announce_line/1.init.m
#
# 予告線の初期化処理
#
# @input args
#   Num : int
# @within function asset:mob/0391.axia_first/**

# tag AV.AnnounceInitを持つDisplayに対して使用すること

# スコア初期化
    $scoreboard players set @s AV.ProjectileTick $(Num)

# 初期化タグ消去
    tag @s add AV.AnnounceLine
    tag @s add AV.Invisible
    tag @s remove AV.AnnounceInit
