#> asset:mob/0235.orange_thrower/tick/reset
#
# リセット
#
# @within function asset:mob/0235.orange_thrower/tick/attack

#> Private
# @private
    #declare score_holder $Random

# スコアをリセット
    scoreboard players reset @s 6J.ResetTick

# 次の攻撃タイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s General.Mob.Tick = $Random Temporary
    scoreboard players remove @s General.Mob.Tick 80

# リセット
    scoreboard players reset $Random Temporary
