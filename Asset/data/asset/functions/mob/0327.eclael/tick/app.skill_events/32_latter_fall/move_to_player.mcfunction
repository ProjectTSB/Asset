#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/move_to_player
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 移動位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground

# 移動
    execute positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] run tp @s ~ ~3.5 ~ ~ 0

# 終了
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80]
