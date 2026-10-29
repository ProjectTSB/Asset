#> asset:effect/0386.pk_insight/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0386.pk_insight/_/tick

#> Private
#@private
    #declare score_holder $Duration
    #declare score_holder $FlagTick

# Interval減算
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
# 10tickごとにカウントダウン
    execute if data storage asset:context this{Interval:0} anchored eyes positioned ^ ^ ^ run function asset:effect/0386.pk_insight/tick/count

# 残り時間が9tick以内なら耐性デバフを消して大幅上昇
    execute store result score $Duration Temporary run data get storage asset:context Duration
    execute store result score $FlagTick Temporary run data get storage asset:context this.FlagTick
    execute if score $Duration Temporary = $FlagTick Temporary run function asset:effect/0386.pk_insight/tick/guard

# リセット
    scoreboard players reset $Duration Temporary
    scoreboard players reset $FlagTick Temporary
