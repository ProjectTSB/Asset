#> asset:mob/1004.tultaria/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/1004/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail
