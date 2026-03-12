#> asset:object/2031.giant_pumpkin/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/detect_hit_entity

# 回転し始め、または高速回転中のみヒット判定を行う
    execute unless entity @s[tag=!2031.BeginningSpin,tag=!2031.HighSpeedSpinning] if entity @p[gamemode=!spectator,distance=..5] run function asset:object/2031.giant_pumpkin/detect_hit_entity/check
