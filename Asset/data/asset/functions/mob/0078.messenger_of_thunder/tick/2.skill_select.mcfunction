#> asset:mob/0078.messenger_of_thunder/tick/2.skill_select
#
# スキルを選択する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1

#> Private
# @private
    #declare score_holder $Random

# ランダムにスキル選択
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run tag @s add 26.Thunder
    execute if score $Random Temporary matches 1 run tag @s add 26.ThunderCurtain
    execute if score $Random Temporary matches 2 run tag @s add 26.ReturnThunder
    execute if score $Random Temporary matches 3 run tag @s add 26.TeleportSpread

# リセット
    scoreboard players reset $Random Temporary
