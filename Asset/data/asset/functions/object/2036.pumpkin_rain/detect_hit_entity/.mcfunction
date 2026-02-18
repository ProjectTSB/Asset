#> asset:object/2036.pumpkin_rain/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/detect_hit_entity

# スコア500以上でかつ周囲にプレイヤーがいる時のみ判定
    execute if entity @s[scores={General.Object.Tick=500..}] if entity @p[gamemode=!spectator,distance=..4] run function asset:object/2036.pumpkin_rain/detect_hit_entity/check_hit
