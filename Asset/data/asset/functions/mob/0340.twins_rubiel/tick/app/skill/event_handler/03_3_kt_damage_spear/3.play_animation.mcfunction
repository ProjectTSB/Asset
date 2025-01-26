#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/3.play_animation
#
# アニメーションのイベントハンドラ Kt移動突き・怯み アニメーション再生
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/1.main

# 再生
    execute as @e[type=item_display,tag=9G.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_rubiel/animations/3_2_katana_spear_damage/tween {duration:1, to_frame: 0}
