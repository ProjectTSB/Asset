#> asset:mob/0340.twins_rubiel/rejoin_process/
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュール続行
    execute if entity @a[tag=9G.Temp.Target.JumpAvoid,tag=!PlayerShouldInvulnerable,limit=1] run schedule function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/7.1.schedule_movetospear 1t replace
