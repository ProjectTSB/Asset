#> asset:mob/0107.dark_ender/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/107/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim,distance=..6] run particle portal ~ ~1.2 ~ 1 1 1 1 60 normal @a

# 盲目付与
    effect give @p[tag=Victim,distance=..6] blindness 3 0 true
