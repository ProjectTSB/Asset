#> asset:object/2068.golden_watermelon/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2068/detect_hit_block

# 1回目の爆発の前のみ判定
# 埋まりにくいように2コマンド使って調整する
    execute if entity @s[tag=!2068.1stHit] unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute if entity @s[tag=!2068.1stHit] unless block ^ ^-0.4 ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
