#> asset:mob/0378.red_knight_v3/tick/90.tp/skill_move
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/90.tp/main

# 近寄ってから攻撃するのでそれ用のスキルのみ選択したい
# 乱数によるスキル選択
    data modify storage lib: Args.key set value "AI.SkillAfterTP"
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 3
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# デバッグスキル固定
    #scoreboard players set $Random Temporary 2
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add AI.Skill01
    execute if score $Random Temporary matches 1 run tag @s add AI.Skill02
    execute if score $Random Temporary matches 2 run tag @s add AI.Skill03
    execute if score $Random Temporary matches 3 run tag @s add AI.Skill04

# リセット
    scoreboard players reset $Random Temporary

# その後動くようにする
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s AI.Tick -1
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s AI.Tick -5
    execute if predicate api:global_vars/difficulty/1_normal run scoreboard players set @s AI.Tick -15
    tag @s remove AI.Skill90
    tag @s add AI.Skill90Used
