#> asset:artifact/1572.after_glow/passeive/pointer
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/1572.after_glow/passeive/3.main
#   asset:artifact/1572.after_glow/passeive/pointer


# 視点方向に赤い点
    # ブロックに当たったら
        execute unless block ^ ^ ^ #lib:no_collision/ run return run particle minecraft:dust 1.0 0.0 0.0 0.5 ^ ^ ^-0.5 0 0 0 0 1 normal
    # 射程限界でも(ついでに無限再起防止)
        execute unless entity @s[distance=..5] run return run particle minecraft:dust 1.0 0.0 0.0 0.5 ~ ~ ~ 0 0 0 0 1 normal
    # どちらも満たさないなら再起
        execute positioned ^ ^ ^0.5 run function asset:artifact/1572.after_glow/passeive/pointer
