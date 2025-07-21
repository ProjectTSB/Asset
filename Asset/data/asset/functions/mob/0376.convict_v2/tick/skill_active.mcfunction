#> asset:mob/0376.convict_v2/tick/skill_active
#
#
#
# @within function asset:mob/0376.convict_v2/tick/


# スキル
    execute if entity @s[tag=AG.SkillAxe1] run function asset:mob/0376.convict_v2/tick/01.skill_axe1/main
    execute if entity @s[tag=AG.SkillAxe2] run function asset:mob/0376.convict_v2/tick/02.skill_axe2/main
    execute if entity @s[tag=AG.SkillAxe3] run function asset:mob/0376.convict_v2/tick/03.skill_axe3/main
    execute if entity @s[tag=AG.SkillAxe4] run function asset:mob/0376.convict_v2/tick/04.skill_axe4/main
    execute if entity @s[tag=AG.SkillAxe5] run function asset:mob/0376.convict_v2/tick/05.skill_axe5/main
    execute if entity @s[tag=AG.SkillAxe6] run function asset:mob/0376.convict_v2/tick/06.skill_axe6/main
    execute if entity @s[tag=AG.SkillAxe7] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0376.convict_v2/tick/07.skill_axe7/main_hard
    execute if entity @s[tag=AG.SkillAxe7] unless predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0376.convict_v2/tick/07.skill_axe7/main

    execute if entity @s[tag=AG.Opening] run function asset:mob/0376.convict_v2/tick/00.opening/main
