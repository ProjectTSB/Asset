#> asset:mob/0327.eclael/rejoin_process/
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 突き怯みのスケジュール再開
    execute if entity @a[tag=93.Temp.ScheduleTargetPlayer,limit=1] run schedule function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/5.1.schedule 1t replace
