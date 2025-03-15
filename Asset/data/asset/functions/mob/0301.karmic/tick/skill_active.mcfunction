#> asset:mob/0301.karmic/tick/skill_active
#
#
#
# @within function asset:mob/0301.karmic/tick/


# 開幕演出
    execute if entity @s[tag=8D.Opening] run function asset:mob/0301.karmic/tick/00.opening/main

# スキルダッシュ（こっから３つに分岐する）
    execute if entity @s[tag=8D.SkillDash] run function asset:mob/0301.karmic/tick/01_0.dash/main
# スキル斬る
    execute if entity @s[tag=8D.SkillSlash] run function asset:mob/0301.karmic/tick/02.slash/main
# スキル銃
    execute if entity @s[tag=8D.SkillGun] run function asset:mob/0301.karmic/tick/03_0.gun/main

# スキル剣移行（こっから３つスキルがある）
    execute if entity @s[tag=8D.SkillSwordCange] run function asset:mob/0301.karmic/tick/04.sword_change/main

# スキルダッシュから発生するやつ
    execute if entity @s[tag=8D.SkillDash1] run function asset:mob/0301.karmic/tick/01_1.dash_slash1/main
    execute if entity @s[tag=8D.SkillDash2] run function asset:mob/0301.karmic/tick/01_2.dash_shot/main
# 未使用
    execute if entity @s[tag=8D.SkillDash3] run function asset:mob/0301.karmic/tick/01_3.dash_slash2/main

# スキル銃の続き
    execute if entity @s[tag=8D.SkillGunLoop] run function asset:mob/0301.karmic/tick/03_1.gun_loop/main
    execute if entity @s[tag=8D.SkillGunEnd] run function asset:mob/0301.karmic/tick/03_2.gun_slash/main

# スキル剣から発生するやつ
    execute if entity @s[tag=8D.SkillSword1] run function asset:mob/0301.karmic/tick/05.sword_slash/main
    execute if entity @s[tag=8D.SkillSword2] run function asset:mob/0301.karmic/tick/06.sword_tackle/main
    execute if entity @s[tag=8D.SkillSword3] run function asset:mob/0301.karmic/tick/07.sword_blackbone/main

# 落下
    execute if entity @s[tag=8D.Fall] run function asset:mob/0301.karmic/tick/fall/main
