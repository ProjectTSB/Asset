#> asset:mob/0461.nectar_plant/tick/reset
#
#
#
# @within function asset:mob/0461.nectar_plant/tick/

# 次の攻撃までの時間をランダムに
    execute store result score @s General.Mob.Tick run random value -50..-25
