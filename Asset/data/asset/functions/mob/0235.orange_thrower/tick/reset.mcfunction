#> asset:mob/0235.orange_thrower/tick/reset
#
# リセット
#
# @within function asset:mob/0235.orange_thrower/tick/attack

# 次の攻撃タイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -80..-50
