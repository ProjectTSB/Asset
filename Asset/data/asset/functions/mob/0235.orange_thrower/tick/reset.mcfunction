#> asset:mob/0235.orange_thrower/tick/reset
#
# リセット
#
# @within function asset:mob/0235.orange_thrower/tick/attack

# スコアをリセット
    scoreboard players reset @s 6J.ResetTick
    scoreboard players set @s General.Mob.Tick -80
