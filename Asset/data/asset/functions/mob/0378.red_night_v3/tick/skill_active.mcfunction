#> asset:mob/0378.red_night_v3/tick/skill_active
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/

# スキル郡
    execute if entity @s[tag=AI.Skill01] run function asset:mob/0378.red_night_v3/tick/01.sword1/main
    execute if entity @s[tag=AI.Skill02] run function asset:mob/0378.red_night_v3/tick/02.sword2/main
    execute if entity @s[tag=AI.Skill03] run function asset:mob/0378.red_night_v3/tick/03.axe1/main
    execute if entity @s[tag=AI.Skill04] run function asset:mob/0378.red_night_v3/tick/04.axe2/main
    execute if entity @s[tag=AI.Skill05] run function asset:mob/0378.red_night_v3/tick/05.sword3/main

# ペナルティ行動
    execute if entity @s[tag=AI.Skill90] run function asset:mob/0378.red_night_v3/tick/90.tp/main

# オープニング
    execute if entity @s[tag=AI.Opening] run function asset:mob/0378.red_night_v3/tick/00.opening/main
