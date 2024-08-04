#> asset:mob/0391.axia_first/ai/projectile/slash_effect/1.init
#
# 斬撃エフェクトの初期化処理
#
# @within function asset:mob/0391.axia_first/**

# tag AV.SlashEffectInitを持つDisplayに対して使用すること

# スコア初期化
    scoreboard players set @s AV.ProjectileTick 0

# 初期化タグ消去
    tag @s add AV.SlashEffect
    tag @s remove AV.SlashEffectInit
