#> asset:mob/0202.hunters_dream/tick/skill/arrow/
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill_active

# 一回後退
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0202.hunters_dream/tick/skill/arrow/backstep

# 召喚する
    execute if score @s General.Mob.Tick matches 4 run function asset:mob/0202.hunters_dream/tick/skill/arrow/arrow_summon
    execute if score @s General.Mob.Tick matches 6 run function asset:mob/0202.hunters_dream/tick/skill/arrow/arrow_summon
    execute if score @s General.Mob.Tick matches 8 run function asset:mob/0202.hunters_dream/tick/skill/arrow/arrow_summon

# リセット
    execute if score @s General.Mob.Tick matches 8.. run function asset:mob/0202.hunters_dream/tick/reset
