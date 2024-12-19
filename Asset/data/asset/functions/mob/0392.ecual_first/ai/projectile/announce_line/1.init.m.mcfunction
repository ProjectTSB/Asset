#> asset:mob/0392.ecual_first/ai/projectile/announce_line/1.init.m
#
# 予告線の初期化処理
#
# @input args
#   Num : int
# @within function asset:mob/0392.ecual_first/**

# tag AV.AnnounceInitを持つDisplayに対して使用すること

# スコア初期化
    $scoreboard players set @s AW.ProjectileTick $(Num)

# 初期化タグ消去
    tag @s add AW.AnnounceLine
    tag @s add AW.Invisible
    tag @s remove AW.AnnounceInit
