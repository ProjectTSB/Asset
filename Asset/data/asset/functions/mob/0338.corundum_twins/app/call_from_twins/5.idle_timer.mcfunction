#> asset:mob/0338.corundum_twins/app/call_from_twins/5.idle_timer
#
# 双子が暇してる時に呼び出される処理
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/02_hg_idle/1.main
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/1.main

# スコア増加
    scoreboard players add @s 9E.IdleTimer 1
