#> asset:mob/0369.prominence_spellbook/tick/reset
#
# リセット処理
#
# @within function
#   asset:mob/0369.prominence_spellbook/tick/ready

#> Private
# @private
    #declare score_holder $Random

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s General.Mob.Tick = $Random Temporary
    scoreboard players remove @s General.Mob.Tick 100

# リセット
    scoreboard players reset $Random Temporary
