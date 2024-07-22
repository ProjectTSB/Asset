#> asset:mob/0371.ice_spellbook/tick/4.reset
#
# リセット
#
# @within function
#   asset:mob/0371.ice_spellbook/tick/2.ready
#   asset:mob/0371.ice_spellbook/tick/3.summon

#> Private
# @private
    #declare score_holder $Random

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s AB.Tick = $Random Temporary
    scoreboard players remove @s AB.Tick 120

# リセット
    scoreboard players reset $Random Temporary
