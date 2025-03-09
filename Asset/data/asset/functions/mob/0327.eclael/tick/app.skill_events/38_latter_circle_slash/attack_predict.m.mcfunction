#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict

# IDはもう設定してあるのでAPI叩くだけ
    $execute positioned ~$(X) ~ ~$(Z) as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
