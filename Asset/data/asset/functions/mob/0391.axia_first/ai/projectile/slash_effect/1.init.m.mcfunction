#> asset:mob/0391.axia_first/ai/projectile/slash_effect/1.init.m
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
    tag @s add AV.SlashEffect
    tag @s add AV.SlashEffectInbisible
    tag @s remove AV.SlashEffectInit
