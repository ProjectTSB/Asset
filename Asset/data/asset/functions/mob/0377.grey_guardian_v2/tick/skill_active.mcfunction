#> asset:mob/0377.grey_guardian_v2/tick/skill_active
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/

# スキル郡
    execute if entity @s[tag=AH.Skill01] run function asset:mob/0377.grey_guardian_v2/tick/01.sword1/main
    execute if entity @s[tag=AH.Skill02] run function asset:mob/0377.grey_guardian_v2/tick/02.sword2/main
    execute if entity @s[tag=AH.Skill03] run function asset:mob/0377.grey_guardian_v2/tick/03.axe1/main
    execute if entity @s[tag=AH.Skill04] run function asset:mob/0377.grey_guardian_v2/tick/04.axe2/main
    execute if entity @s[tag=AH.Skill05] run function asset:mob/0377.grey_guardian_v2/tick/05.sword3/main

# ペナルティ行動
    execute if entity @s[tag=AH.Skill90] run function asset:mob/0377.grey_guardian_v2/tick/90.tp/main

# オープニング
    execute if entity @s[tag=AH.Opening] run function asset:mob/0377.grey_guardian_v2/tick/00.opening/main
