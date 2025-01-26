#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick
#
# 座標雷攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構えて攻撃のパターンを決定
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/windup

# サンダー攻撃
    # 1
        execute if entity @s[tag=RW.Skill.Thunder.1] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/1
    # 2
        execute if entity @s[tag=RW.Skill.Thunder.2] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/2
    # 3
        execute if entity @s[tag=RW.Skill.Thunder.3] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/3
    # 4
        execute if entity @s[tag=RW.Skill.Thunder.4] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/4
