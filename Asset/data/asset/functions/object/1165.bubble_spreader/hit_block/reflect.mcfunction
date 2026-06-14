#> asset:object/1165.bubble_spreader/hit_block/reflect
#
# 継承先などから実行される処理
#
# @within asset:object/1165.bubble_spreader/hit_block/

# 実行者を反射軌道で0.1m前進
# 反射距離を何ブロック先が埋まってるかで調整する
    execute unless block ^ ^ ^1.0 #lib:no_collision/ run scoreboard players set $Speed Lib 10
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run scoreboard players set $Speed Lib 5
    function lib:reflection_bullet/
