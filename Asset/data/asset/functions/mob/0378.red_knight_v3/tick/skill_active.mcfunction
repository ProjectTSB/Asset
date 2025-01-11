#> asset:mob/0378.red_knight_v3/tick/skill_active
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/

# スキル郡
    execute if entity @s[tag=AI.Skill01] run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/main
    execute if entity @s[tag=AI.Skill02] run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/main
    execute if entity @s[tag=AI.Skill03] run function asset:mob/0378.red_knight_v3/tick/03.skill_iai/main
    execute if entity @s[tag=AI.Skill04] run function asset:mob/0378.red_knight_v3/tick/04.skill_knife/main
    execute if entity @s[tag=AI.Skill05] run function asset:mob/0378.red_knight_v3/tick/05.skill_jump/main
    execute if entity @s[tag=AI.Skill06] run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/main

# 移動行動
    execute if entity @s[tag=AI.Skill90] run function asset:mob/0378.red_knight_v3/tick/90.tp/main
    execute if entity @s[tag=AI.Skill91] run function asset:mob/0378.red_knight_v3/tick/91.fall/main

# オープニング
    execute if entity @s[tag=AI.Opening] run function asset:mob/0378.red_knight_v3/tick/00.opening/main
