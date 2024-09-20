#> asset:mob/0393.labyria_first/ai/general/3.teleport_effect/
#
# 汎用・テレポート演出
#   テレポートコマンドでTPした直後に使用すること
#
# @within function asset:mob/0393.labyria_first/**

# 音（現在地点とテレポート先で鳴らす）
    playsound entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 0.5 2
    playsound entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
    playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
    execute at @s run playsound entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 0.5 2
    execute at @s run playsound entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
    execute at @s run playsound item.trident.riptide_1 hostile @a[distance=..16] ~ ~ ~ 0.4 0.5
# ループ演出
    execute facing entity @s feet unless entity @s[distance=..0.5] run function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/loop
