#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict

# 攻撃位置移動
    $execute positioned ~$(X) ~ ~$(Z) as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
