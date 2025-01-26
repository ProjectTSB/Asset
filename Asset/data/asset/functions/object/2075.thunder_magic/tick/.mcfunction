#> asset:object/2075.thunder_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2075/tick

#> Private
# @private
    #declare score_holder $Interval

# 一定間隔で表示
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2075.thunder_magic/tick/vfx
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雷
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/2075.thunder_magic/tick/thunder

# 消滅処理
    # kill @s[scores={General.Object.Tick=1000..}]
