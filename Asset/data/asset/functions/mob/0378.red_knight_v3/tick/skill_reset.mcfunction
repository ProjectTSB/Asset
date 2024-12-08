#> asset:mob/0378.red_knight_v3/tick/skill_reset
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s AI.Tick -30
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s AI.Tick -40
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s AI.Tick -55

# アニメーション戻す
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_ground/play

# リセット処理
    tag @s remove AI.Skill01
    tag @s remove AI.Skill02
    tag @s remove AI.Skill03
    tag @s remove AI.Skill04
    tag @s remove AI.Skill05

    tag @s remove AI.Skill90
    tag @s remove AI.Skill91
    tag @s remove AI.Skill90Used
    tag @s remove AI.Opening

# 地面に着いていない時、落下スキルを発動
    execute if block ~ ~-0.5 ~ #lib:no_collision run scoreboard players set @s AI.Tick 0
    execute if block ~ ~-0.5 ~ #lib:no_collision run tag @s add AI.Skill91
