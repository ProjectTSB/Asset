#> asset:mob/0461.nectar_plant/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/461/attack

# バニラの攻撃じゃなかったら return
execute unless data storage asset:context Attack{IsVanilla:true} run return fail