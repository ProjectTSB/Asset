#> asset:mob/0078.messenger_of_thunder/tick/2.skill_select
#
# スキルを選択する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1

#> Private
# @private
    #declare score_holder $Random

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "78.MessengerOfThunder"
    data modify storage lib: Args.max set value 4
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Args.max set value 6
    data modify storage lib: Args.scarcity_history_size set value 2
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# debug
    scoreboard players set $Random Temporary 5

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add 26.Thunder
    execute if score $Random Temporary matches 1 run tag @s add 26.ThunderCurtain
    execute if score $Random Temporary matches 2 run tag @s add 26.ReturnThunder
    execute if score $Random Temporary matches 3 run tag @s add 26.TeleportSpread
    execute if score $Random Temporary matches 4 run tag @s add 26.PredictThunder
    execute if score $Random Temporary matches 5 run tag @s add 26.CrossThunder

# リセット
    scoreboard players reset $Random Temporary
