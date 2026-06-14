#> asset:mob/0464.drain_plant/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/464/attack

# バニラの攻撃じゃなかったら return
execute unless data storage asset:context Attack{IsVanilla:true} run return fail