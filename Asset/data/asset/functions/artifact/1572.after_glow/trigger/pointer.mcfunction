#> asset:artifact/1572.after_glow/trigger/pointer
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/1572.after_glow/trigger/3.main
#   asset:artifact/1572.after_glow/trigger/pointer

# 視点方向にビーム召喚
    # ブロックに当たったらビーム
        execute unless block ^ ^ ^ #lib:no_collision/ positioned ^ ^ ^-0.5 rotated ~ -90 run return run function asset:artifact/1572.after_glow/trigger/object_summon
    # 射程限界でビーム(ついでに無限再起防止)
        execute unless entity @s[distance=..5] rotated ~ -90 run return run function asset:artifact/1572.after_glow/trigger/object_summon
    # どちらも満たさないなら再起
       execute positioned ^ ^ ^0.5 run function asset:artifact/1572.after_glow/trigger/pointer
