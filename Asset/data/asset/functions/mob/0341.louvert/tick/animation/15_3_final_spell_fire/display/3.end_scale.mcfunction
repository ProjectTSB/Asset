#> asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/3.end_scale
#
# 小さくしてキルするために大きさを変更
#
# @within function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# 大きさを変更する
    execute as @e[type=item_display,tag=9H.Final.Display.Bullet,distance=..64] run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.2f]}}