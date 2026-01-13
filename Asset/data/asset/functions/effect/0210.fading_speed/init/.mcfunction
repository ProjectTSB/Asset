#> asset:effect/0210.fading_speed/init/
#
#
#
# @within function
#   asset:effect/0210.fading_speed/given/
#   asset:effect/0210.fading_speed/re-given/

# (Duration - 1)をIntervalとして設定
    execute store result storage asset:context this.UpdateInterval.Max int 0.9999999999 run data get storage asset:context Duration
    data modify storage asset:context this.UpdateInterval._ set from storage asset:context this.UpdateInterval.Max

# Durationをそのままフィールドに入れておく
    data modify storage asset:context this.Duration set from storage asset:context Duration
