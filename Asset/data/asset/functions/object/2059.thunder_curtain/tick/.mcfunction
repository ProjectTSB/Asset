#> asset:object/2059.thunder_curtain/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2059/tick

#> Private
# @private
    #declare score_holder $Interval

# 2tickごとに雷を落とし、IntervalTagを付与
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run tag @s add 2059.Interval
    execute if score $Interval Temporary matches 0 run function asset:object/2059.thunder_curtain/tick/thunder1
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 継承
    execute at @s run function asset:object/super.tick

# Tag削除
    tag @s[tag=2059.Interval] remove 2059.Interval

# 消滅処理
    kill @s[scores={General.Object.Tick=120..}]
