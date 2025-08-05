#> asset:mob/0202.hunters_dream/tick/skill/sword/
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill_active

# 一回後退
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0202.hunters_dream/tick/skill/sword/backstep
# その後突進
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0202.hunters_dream/tick/skill/sword/step
# 攻撃判定
    execute if score @s General.Mob.Tick matches 14 run function asset:mob/0202.hunters_dream/tick/skill/sword/attack
# リセット
    execute if score @s General.Mob.Tick matches 14.. run function asset:mob/0202.hunters_dream/tick/reset
