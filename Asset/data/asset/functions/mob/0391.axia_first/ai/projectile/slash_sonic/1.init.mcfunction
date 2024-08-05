#> asset:mob/0391.axia_first/ai/projectile/slash_sonic/1.init
#
# 斬撃飛ばし 初期化処理
#
# @within function asset:mob/0391.axia_first/**

# tag AV.SlashSonicInitを持つDisplayに対して使用すること

# スコア初期化
    scoreboard players set @s AV.ProjectileTick 0

# データ保存用マーカー召喚
    summon marker ~ ~ ~ {Tags:["AV.SlashSonic"]}
    ride @e[type=marker,tag=AV.SlashSonic,distance=..0.01,limit=1] mount @s
    execute on passengers run data modify entity @s data set value {}

# 初期化タグ消去
    tag @s add AV.SlashSonic
    tag @s remove AV.SlashSonicInit
