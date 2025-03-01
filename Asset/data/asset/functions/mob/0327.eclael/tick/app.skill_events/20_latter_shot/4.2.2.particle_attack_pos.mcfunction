#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.2.2.particle_attack_pos
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within function
#   asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/**
#   asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.2.3.spread_attack_pos

# 予兆
    particle electric_spark ~ ~ ~ 0 0 0 1 50
    particle firework ~ ~1 ~ 0 0 0 0 1
    particle firework ~ ~2 ~ 0 0 0 0 1
    particle firework ~ ~3 ~ 0 0 0 0 1
    particle firework ~ ~4 ~ 0 0 0 0 1
    particle firework ~ ~5 ~ 0 0 0 0 1
    particle firework ~ ~6 ~ 0 0 0 0 1
    particle firework ~ ~7 ~ 0 0 0 0 1
    playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    tag @s add 93.Aec.AttackPos.Init
