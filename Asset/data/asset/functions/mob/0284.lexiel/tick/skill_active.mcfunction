#> asset:mob/0284.lexiel/tick/skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/0284.lexiel/tick/**

# 近接
    execute if entity @s[tag=7W.SkillMelee] run function asset:mob/0284.lexiel/tick/skill/melee/

# 雷
    execute if entity @s[tag=7W.SkillThunder] run function asset:mob/0284.lexiel/tick/skill/thunder/

# 火の玉
    execute if entity @s[tag=7W.SkillFireball] run function asset:mob/0284.lexiel/tick/skill/fireball/

# 回転
    execute if entity @s[tag=7W.SkillSpin] run function asset:mob/0284.lexiel/tick/skill/spin/
