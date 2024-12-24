#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick
#
# メテオ攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構えて攻撃のパターンを決定
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/windup

# メテオ攻撃
    # 1
        execute if entity @s[tag=RW.Skill.Meteor.1] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/1
    # 2
        execute if entity @s[tag=RW.Skill.Meteor.2] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/2
    # 3
        execute if entity @s[tag=RW.Skill.Meteor.3] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/3
    # 4
        execute if entity @s[tag=RW.Skill.Meteor.4] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/4
