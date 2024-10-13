#> asset:mob/0369.prominence_spellbook/tick/4.reset
#
# リセット処理
#
# @within function
#   asset:mob/0369.prominence_spellbook/tick/2.ready

#> Private
# @private
    #declare score_holder $Random

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s A9.Tick = $Random Temporary
    scoreboard players remove @s A9.Tick 100

# リセット
    scoreboard players reset $Random Temporary
