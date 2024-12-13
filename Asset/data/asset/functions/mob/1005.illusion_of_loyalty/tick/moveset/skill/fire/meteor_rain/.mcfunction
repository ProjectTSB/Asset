#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/
#
# メテオ攻撃
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# 構えて攻撃のパターンを決定
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/windup

# メテオ攻撃
    # 1
        execute if entity @s[tag=RX.Skill.Meteor.1] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/pattern/1
    # 2
        execute if entity @s[tag=RX.Skill.Meteor.2] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/pattern/2
