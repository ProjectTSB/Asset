#> asset:mob/0123.lexiel_v3/tick/skill_active
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/

# スキル郡
    execute if entity @s[tag=3F.SkillSword1] run function asset:mob/0123.lexiel_v3/tick/01.skill_sword/main
    execute if entity @s[tag=3F.SkillSword2] run function asset:mob/0123.lexiel_v3/tick/02.skill_sword2/main
    execute if entity @s[tag=3F.SkillSword3] run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main

    execute if entity @s[tag=3F.SkillMagic1] run function asset:mob/0123.lexiel_v3/tick/11.skill_fireball/main
    execute if entity @s[tag=3F.SkillMagic2] run function asset:mob/0123.lexiel_v3/tick/12.skill_thunder/main
    execute if entity @s[tag=3F.SkillMagic3] run function asset:mob/0123.lexiel_v3/tick/13.skill_explode/main

# オープニング
    execute if entity @s[tag=3F.Opening] run function asset:mob/0123.lexiel_v3/tick/00.opening/main
