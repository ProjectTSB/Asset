#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/3.play_animation
#
# アニメーションのイベントハンドラ Hgライダーキック アニメーション再生
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/1.main

# 再生
    execute as @e[type=item_display,tag=9F.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:twins_sapphiel/animations/5_0_hg_riderkick/tween_play
