#> asset:mob/0201.burnt_out_dream/tick/2.arrow/main
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/skill_active

# 一回後退
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0201.burnt_out_dream/tick/2.arrow/backstep

# 召喚する
    execute if score @s General.Mob.Tick matches 4 run function asset:mob/0201.burnt_out_dream/tick/2.arrow/shot
    execute if score @s General.Mob.Tick matches 6 run function asset:mob/0201.burnt_out_dream/tick/2.arrow/shot
    execute if score @s General.Mob.Tick matches 8 run function asset:mob/0201.burnt_out_dream/tick/2.arrow/shot

# リセット
    execute if score @s General.Mob.Tick matches 8 run function asset:mob/0201.burnt_out_dream/tick/reset
