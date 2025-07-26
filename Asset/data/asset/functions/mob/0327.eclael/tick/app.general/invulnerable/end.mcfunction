#> asset:mob/0327.eclael/tick/app.general/invulnerable/end
#
# 共通の無敵化終了処理
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# 無敵化終了
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
