#> asset:mob/0175.queen_bee/tick/skill_active
#
#
#
# @within function asset:mob/0175.queen_bee/tick/

# 突進
    execute if entity @s[tag=4V.SkillTackle] run function asset:mob/0175.queen_bee/tick/skill/tackle/
# 召喚
    execute if entity @s[tag=4V.SkillSummon] run function asset:mob/0175.queen_bee/tick/skill/summon/
# 針
    execute if entity @s[tag=4V.SkillNeedle] run function asset:mob/0175.queen_bee/tick/skill/needle/

# 地面ぶっ叩く
    execute if entity @s[tag=4V.SkillGrandSlam] run function asset:mob/0175.queen_bee/tick/skill/grandslam/

# ハチ爆弾
    execute if entity @s[tag=4V.SkillBeeBomb] run function asset:mob/0175.queen_bee/tick/skill/beebomb/
# 隊列突進
    execute if entity @s[tag=4V.SkillTackleFormation] run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/
