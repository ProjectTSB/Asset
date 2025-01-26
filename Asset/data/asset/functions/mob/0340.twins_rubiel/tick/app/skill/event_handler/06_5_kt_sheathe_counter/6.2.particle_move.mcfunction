#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/6.2.particle_move
#
# アニメーションのイベントハンドラ Ktカウンター居合斬り 演出
#
# @within
#    function asset:mob/0340.twins_rubiel/**

# 無限ループ対策
    scoreboard players add @s Temporary 1
# 演出
    particle dust 100000000 0.6 0.6 0.8 ^ ^1 ^ 0.3 0.3 0.3 0 10
# 再帰
    execute if score @s Temporary matches ..30 unless entity @s[distance=..1.5] positioned ^ ^ ^1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/6.2.particle_move
