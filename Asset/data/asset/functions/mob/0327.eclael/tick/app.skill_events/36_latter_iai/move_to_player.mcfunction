#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/move_to_player
#
# アニメーションのイベントハンドラ
#
# @within
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# 移動
    execute positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ~ ~0.5 ~ ~ 0

# 終了
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80]
