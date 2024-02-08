#> asset:mob/0365.frestchika_v2/ai/general/3.teleport_effect/
#
# 汎用・テレポート演出
#   テレポートコマンドでTPした後に使用すること
#
# @within function asset:mob/0365.frestchika_v2/**

# 音（現在地点とテレポート先で鳴らす）
    playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.25 0.65
    playsound entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 0.6 2
    playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
    execute at @s run playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.25 0.65
    execute at @s run playsound entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 0.6 2
    execute at @s run playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
# ループ演出
    execute facing entity @s feet unless entity @s[distance=..0.5] run function asset:mob/0365.frestchika_v2/ai/general/3.teleport_effect/loop