#> asset:mob/0380.haruclaire_v3/tick/event/press/sound_flap
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/press/

# 3tickおきに実行
    scoreboard players operation $Interval Temporary = @s AK.EventTimer
    scoreboard players operation $Interval Temporary %= $3 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval

# 効果音
    playsound entity.phantom.flap hostile @a ~ ~ ~ 2 2

# リセット
    scoreboard players reset $Interval
