#> asset:artifact/0101.grimoire/ballet/water
#
# 水の弾道
#
# @within function
#   asset:artifact/0101.grimoire/trigger/3.main
#   asset:artifact/0101.grimoire/ballet/water

# 弾道
    particle minecraft:dust 0.133 0 1 1

# ブロックに当たったら起爆
    execute unless block ~ ~ ~ #lib:no_collision/ run return run function asset:artifact/0101.grimoire/ballet/water_hit

# 射程外に出ても起爆
    execute unless entity @s[distance=..10] run return run function asset:artifact/0101.grimoire/ballet/water_hit

# 敵に当たってももちろん起爆
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living_without_player,dx=0] run return run function asset:artifact/0101.grimoire/ballet/water_hit

# 起爆しないなら再起
    execute positioned ^ ^ ^0.5 run function asset:artifact/0101.grimoire/ballet/water
