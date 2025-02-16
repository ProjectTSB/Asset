#> asset:mob/0077.chorus_zombie/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/77/attack

# バニラの攻撃じゃなかったらreturn
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 確率で敵をTPさせる
# 床の上をターゲットにすること
    execute unless predicate lib:is_ban_tp_area as @a[tag=Victim,distance=..6] at @s if predicate lib:random_pass_per/30 run function asset:mob/0077.chorus_zombie/attack/teleport/
