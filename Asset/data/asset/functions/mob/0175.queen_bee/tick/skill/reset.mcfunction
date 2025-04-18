#> asset:mob/0175.queen_bee/tick/skill/reset
#
# 共通リセット処理
#
# @within function asset:mob/0175.queen_bee/tick/skill/**

# Tagを削除
    tag @s remove 4V.SkillTackle
    tag @s remove 4V.SkillGrandSlam
    tag @s remove 4V.SkillSummon
    tag @s remove 4V.SkillNeedle
    tag @s remove 4V.SkillTackleFormation
    tag @s remove 4V.SkillBeeBomb

    scoreboard players set @s General.Mob.Tick -60
    scoreboard players reset @s 4V.Count

# HitList初期化
    data modify storage asset:context this.HitList set value {}

# モデルを戻しておく
    execute on passengers run data modify entity @s item.tag.CustomModelData set value 20052
    execute on passengers positioned as @s run tp @s ~ ~ ~ ~ 0

# ブロックに埋まってたり、距離が遠すぎたらしたらテレポートする
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0175.queen_bee/tick/common/tp/spread_teleport
    execute unless entity @p[gamemode=!spectator,distance=..15] run function asset:mob/0175.queen_bee/tick/common/tp/spread_teleport
