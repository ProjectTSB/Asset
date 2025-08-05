#> asset:mob/0202.hunters_dream/tick/skill_active
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/

# 剣
    execute if entity @s[tag=5M.SkillSword] run function asset:mob/0202.hunters_dream/tick/skill/sword/
# 弓
    execute if entity @s[tag=5M.SkillArrow] run function asset:mob/0202.hunters_dream/tick/skill/arrow/
# サイドステップ
    execute if entity @s[tag=5M.SkillSideStep] run function asset:mob/0202.hunters_dream/tick/skill/arrow/
