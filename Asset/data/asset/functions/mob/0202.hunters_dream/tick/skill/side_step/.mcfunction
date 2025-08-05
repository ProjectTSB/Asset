#> asset:mob/0202.hunters_dream/tick/skill/side_step/
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill_active

# サイドステップ
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0202.hunters_dream/tick/skill/side_step/step

# リセット
    execute if score @s General.Mob.Tick matches 5 run function asset:mob/0202.hunters_dream/tick/reset
