#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/
#
# 雷攻撃
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# 構えて攻撃のパターンを決定
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/windup

# 攻撃
    # 1
        execute if entity @s[tag=RX.Skill.Thunder.1] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/pattern/1
    # 2
        execute if entity @s[tag=RX.Skill.Thunder.2] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/pattern/2
