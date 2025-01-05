#> asset:mob/0201.burnt_out_dream/tick/1.sword/main
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/skill_active

# 一回後退
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0201.burnt_out_dream/tick/1.sword/backstep
# その後突進
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0201.burnt_out_dream/tick/1.sword/step
# 攻撃判定
    execute if score @s General.Mob.Tick matches 14 run function asset:mob/0201.burnt_out_dream/tick/1.sword/slash
# リセット
    execute if score @s General.Mob.Tick matches 14 run function asset:mob/0201.burnt_out_dream/tick/reset
