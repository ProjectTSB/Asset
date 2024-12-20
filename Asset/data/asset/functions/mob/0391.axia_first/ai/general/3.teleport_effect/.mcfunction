#> asset:mob/0391.axia_first/ai/general/3.teleport_effect/
#
# 汎用・テレポート演出
#   テレポートコマンドでTPした直後に使用すること
#
# @within function asset:mob/0391.axia_first/**

# 音（現在地点とテレポート先で鳴らす）
    playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 1
    playsound entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
    playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
    execute at @s run playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 1 1
    execute at @s run playsound entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
    execute at @s run playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
# ループ演出
    execute facing entity @s feet unless entity @s[distance=..0.5] run function asset:mob/0391.axia_first/ai/general/3.teleport_effect/loop
