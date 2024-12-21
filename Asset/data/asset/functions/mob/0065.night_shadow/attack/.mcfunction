#> asset:mob/0065.night_shadow/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/65/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 盲目を付与
    effect give @p[tag=Victim,distance=..6] blindness 4 0 true
