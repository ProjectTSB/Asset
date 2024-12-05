#> asset:object/2057.thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2057/tick

#> Private
# @private
    #declare score_holder $Interval

# 3tickに一度vfxを表示
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2057.thunder/tick/vfx
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷
    execute if entity @s[scores={General.Object.Tick=0}] run function asset:object/2057.thunder/tick/thunder

# 念のための消滅処理
    kill @s[scores={General.Object.Tick=100..}]
