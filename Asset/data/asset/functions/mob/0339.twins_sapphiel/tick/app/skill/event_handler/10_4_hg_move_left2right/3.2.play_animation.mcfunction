#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_4_hg_move_left2right/3.2.play_animation
#
# アニメーションのイベントハンドラ Hgステップ・左右 アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_4_hg_move_left2right/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/pause_all
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/10_0_hg_move_right/tween_play
# 再生開始時間を弄る
    scoreboard players set @s aj.anim_time 5
    scoreboard players set @s aj.twins_sapphiel.animation.10_1_hg_move_left.local_anim_time 5
