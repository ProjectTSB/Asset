#> asset:object/1015.call_fish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1015/tick

#> Private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 20tickに1度攻撃
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1015.call_fish/tick/find_target/
    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
