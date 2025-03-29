#> asset:object/1132.red_knight_zenith_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1132/tick

#> private
# @private
    #declare score_holder $Interval

# Super
    function asset:object/super.tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 数Tickおきにワープ攻撃
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1132.red_knight_zenith_slash/tick/teleport
    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
