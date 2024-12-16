#> asset:mob/0077.chorus_zombie/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/77/attack

# 確率で敵をTPさせる
# 床の上をターゲットにすること
    execute as @a[tag=Victim,distance=..6] at @s if predicate lib:random_pass_per/30 run function asset:mob/0077.chorus_zombie/attack/teleport/
