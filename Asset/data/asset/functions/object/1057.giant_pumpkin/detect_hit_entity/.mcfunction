#> asset:object/1057.giant_pumpkin/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1057/detect_hit_entity

# 回転し始め、または高速回転中のみヒット判定を行う
    execute unless entity @s[tag=!2031.BeginningSpin,tag=!2031.HighSpeedSpinning] if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run function asset:object/1057.giant_pumpkin/detect_hit_entity/check
