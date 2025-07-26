#> asset:mob/0327.eclael/tick/app.general/invulnerable/start
#
# 共通の無敵化処理
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# 無敵化
    data modify entity @s Invulnerable set value 1b
    execute if score @s 93.AnimationTimer matches 1 run tag @s add Uninterferable
