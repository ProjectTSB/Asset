#> asset:mob/0371.lightning_spellbook/tick/reset
#
# リセット処理
#
# @within function
#   asset:mob/0371.lightning_spellbook/tick/ready
#   asset:mob/0371.lightning_spellbook/tick/summon

#> Private
# @private
    #declare score_holder $Random

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s General.Mob.Tick = $Random Temporary
    scoreboard players remove @s General.Mob.Tick 120

# リセット
    scoreboard players reset $Random Temporary
