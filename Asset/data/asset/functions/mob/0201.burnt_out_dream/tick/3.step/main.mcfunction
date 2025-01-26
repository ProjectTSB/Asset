#> asset:mob/0201.burnt_out_dream/tick/3.step/main
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/skill_active

# サイドステップ
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0201.burnt_out_dream/tick/3.step/step

    execute if score @s General.Mob.Tick matches 5 run function asset:mob/0201.burnt_out_dream/tick/reset
