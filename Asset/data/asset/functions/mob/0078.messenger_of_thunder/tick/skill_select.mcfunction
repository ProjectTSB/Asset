#> asset:mob/0078.messenger_of_thunder/tick/skill_select
#
# スキルを選択する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "78.MessengerOfThunder"
    data modify storage lib: Args.max set value 4
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Args.max set value 6
    data modify storage lib: Args.scarcity_history_size set value 2
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# debug1
    # tag @s add 26.ConsecutiveAttack

# ハード以上 & 体力が半分以下 & 連続攻撃のCD中でない を満たすなら
# 乱数とは別口で低確率で連続攻撃へ移行
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=26.HPLess50Per] unless entity @s[scores={26.ConsecutiveCool=1..}] if predicate lib:random_pass_per/40 run tag @s add 26.ConsecutiveAttack
    execute if entity @s[tag=26.ConsecutiveAttack] run function asset:mob/0078.messenger_of_thunder/tick/skill/consective/skill_select

# 連続攻撃のクールタイムを減らす
    execute if entity @s[scores={26.ConsecutiveCool=0..}] run scoreboard players remove @s 26.ConsecutiveCool 1

# debug2
    # scoreboard players set $Random Temporary 0

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add 26.Thunder
    execute if score $Random Temporary matches 1 run tag @s add 26.ThunderCurtain
    execute if score $Random Temporary matches 2 run tag @s add 26.ReturnThunder
    execute if score $Random Temporary matches 3 run tag @s add 26.TeleportSpread
    execute if score $Random Temporary matches 4 run tag @s add 26.PredictThunder
    execute if score $Random Temporary matches 5 run tag @s add 26.CrossThunder

# リセット
    scoreboard players reset $Random Temporary
