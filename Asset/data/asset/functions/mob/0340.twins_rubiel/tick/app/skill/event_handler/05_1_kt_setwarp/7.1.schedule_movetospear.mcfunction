#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.1.schedule_movetospear
#
# アニメーションのイベントハンドラ Ktワープ連撃 回避判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/5.3.damage_spear
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.1.schedule_movetospear

# 着地したプレイヤーにて実行
    execute as @a[tag=9G.Temp.Target.JumpAvoid] at @s unless block ~ ~-0.1 ~ #lib:no_collision/ run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.2.schedule_player_land

# 再帰
    execute if entity @a[tag=9G.Temp.Target.JumpAvoid] run schedule function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.1.schedule_movetospear 1t replace
