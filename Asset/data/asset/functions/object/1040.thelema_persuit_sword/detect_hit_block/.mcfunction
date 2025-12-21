#> asset:object/1040.thelema_persuit_sword/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1040/detect_hit_block

# 18tick以降にブロック接触判定
    execute if entity @s[scores={General.Object.Tick=18..}] unless block ~ ~-0.2 ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
