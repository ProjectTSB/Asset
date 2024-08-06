#> asset:mob/0391.axia_first/ai/projectile/sonic_boom/1.init
#
# 斬撃エフェクト（ソニックブーム）の初期化処理
#
# @within function asset:mob/0391.axia_first/**

# tag AV.SlashEffectInitを持つDisplayに対して使用すること

# スコア初期化
    scoreboard players set @s AV.ProjectileTick 0

# 初期化タグ消去
    tag @s add AV.SonicBoomEffect
    tag @s remove AV.SlashEffectInit
