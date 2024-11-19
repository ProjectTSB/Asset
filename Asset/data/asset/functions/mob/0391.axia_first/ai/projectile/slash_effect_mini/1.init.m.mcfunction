#> asset:mob/0391.axia_first/ai/projectile/slash_effect_mini/1.init.m
#
# 斬撃エフェクトの初期化処理
#
# @input args
#   Num : int
# @within function asset:mob/0391.axia_first/**

# tag AV.SlashEffectInitを持つDisplayに対して使用すること

# スコア初期化
    $scoreboard players set @s AV.ProjectileTick $(Num)

# 初期化タグ消去
    tag @s add AV.SlashEffectMini
    tag @s add AV.Invisible
    tag @s remove AV.SlashEffectInit
