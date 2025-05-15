#> asset:mob/0376.convict_v2/tick/skill_reset
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s General.Mob.Tick -20
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s General.Mob.Tick -30
    execute if predicate api:global_vars/difficulty/1_normal run scoreboard players set @s General.Mob.Tick -45

# 足元空気なら下にいく
    execute at @s if block ~ ~-0.5 ~ #lib:no_collision positioned ~ ~-0.5 ~ run function asset:mob/0376.convict_v2/tick/common/tp
    execute at @s if block ~ ~-0.5 ~ #lib:no_collision positioned ~ ~-0.5 ~ run function asset:mob/0376.convict_v2/tick/common/tp
    execute at @s if block ~ ~-0.5 ~ #lib:no_collision positioned ~ ~-0.5 ~ run function asset:mob/0376.convict_v2/tick/common/tp
    execute at @s if block ~ ~-0.5 ~ #lib:no_collision positioned ~ ~-0.5 ~ run function asset:mob/0376.convict_v2/tick/common/tp

# 埋まってたらTPする
    execute at @s unless block ~ ~ ~ #lib:no_collision positioned as @p run function asset:mob/0376.convict_v2/tick/common/spread_tp

# アニメーション戻す
    execute as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/play

# タグ消す
    tag @s remove AG.SkillAxe1
    tag @s remove AG.SkillAxe2
    tag @s remove AG.SkillAxe3
    tag @s remove AG.SkillAxe4
    tag @s remove AG.SkillAxe5
    tag @s remove AG.SkillAxe6
    tag @s remove AG.SkillAxe7

    tag @s remove AG.Opening
