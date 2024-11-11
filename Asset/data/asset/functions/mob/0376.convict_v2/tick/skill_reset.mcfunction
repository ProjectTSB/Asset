#> asset:mob/0376.convict_v2/tick/skill_reset
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s AG.Tick -20
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s AG.Tick -30
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s AG.Tick -45

say reset

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
