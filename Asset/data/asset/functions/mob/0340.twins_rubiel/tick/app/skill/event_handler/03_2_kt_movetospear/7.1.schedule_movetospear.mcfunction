#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/7.1.schedule_movetospear
#
# アニメーションのイベントハンドラ Kt移動突き 回避判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/5.damage
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/7.1.schedule_movetospear
#    function asset:mob/0340.twins_rubiel/rejoin_process/

# 着地したプレイヤーにて実行
    execute as @a[tag=9G.Temp.Target.JumpAvoid] at @s unless block ~ ~-0.1 ~ #lib:no_collision run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/7.2.schedule_player_land

# 再帰
    execute if entity @a[tag=9G.Temp.Target.JumpAvoid,limit=1] run schedule function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/7.1.schedule_movetospear 1t replace
