#> asset:mob/0378.red_night_v3/tick/skill_reset
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s AI.Tick -30
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s AI.Tick -40
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s AI.Tick -55

# ペナルティ行動後のCD
    execute if entity @s[tag=AI.Skill90] run scoreboard players set @s AI.Tick -30

# アニメーション戻す
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/play

# リセット処理
    tag @s remove AI.Skill01
    tag @s remove AI.Skill02
    tag @s remove AI.Skill03
    tag @s remove AI.Skill04
    tag @s remove AI.Skill05

    tag @s remove AI.Skill90

    tag @s remove AI.Opening
