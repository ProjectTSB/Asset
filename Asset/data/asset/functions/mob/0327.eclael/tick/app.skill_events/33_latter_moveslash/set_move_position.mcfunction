#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/set_move_position
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# 移動位置決定
    summon area_effect_cloud ^ ^2 ^2 {Duration:30,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground
