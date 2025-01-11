#> asset:mob/0341.louvert/tick/general/3.teleport_effect
#
# 汎用・テレポート演出
#   テレポートコマンドでテレポートした後に使用すること
#
# @within function asset:mob/0341.louvert/**

# 音（現在地点とテレポート先で鳴らす）
    playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
    playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
    execute at @s run playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 0.5 0.65
    execute at @s run playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
# ループ演出
    execute facing entity @s feet unless entity @s[distance=..0.5] run function asset:mob/0341.louvert/tick/general/3.1.teleport_effect_loop