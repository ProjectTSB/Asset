#> asset:effect/0258.spirit_melody/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0258.spirit_melody/_/tick

#> Private
# @private
    #declare score_holder $Interval
    #declare score_holder $Temp

# Noteが1以上の時は3で余剰算して、余りが0-1の時は2回、2の時は1回鳴らす
    execute if entity @s[scores={258.Note=1..}] run scoreboard players operation $Temp Temporary = @s 258.Note
    execute if entity @s[scores={258.Note=1..}] run scoreboard players operation $Temp Temporary %= $3 Const
    execute if entity @s[scores={258.Note=1..}] if score $Temp Temporary matches 0..1 run scoreboard players add @s 258.RunCount 1
    execute if entity @s[scores={258.Note=1..,258.RunCount=2..}] if score $Temp Temporary matches 0..1 run scoreboard players add @s 258.Note 1
    execute if entity @s[scores={258.Note=1..}] if score $Temp Temporary matches 2 run scoreboard players add @s 258.Note 1
    execute if entity @s[scores={258.Note=1..,258.RunCount=2..}] run scoreboard players reset @s 258.RunCount
    execute if entity @s[scores={258.Note=1..}] run scoreboard players reset $Temp Temporary

# 0の時はそのまま増やす
    execute if entity @s[scores={258.Tick=0}] run scoreboard players add @s 258.Note 1

# 演奏
    execute store result storage asset:context this.Note int 1 run scoreboard players get @s 258.Note
    function asset:effect/0258.spirit_melody/tick/note/.m with storage asset:context this

# 一定間隔で回復
    scoreboard players operation $Interval Temporary = @s 258.Tick
    scoreboard players operation $Interval Temporary %= $20 Const
    execute if score $Interval Temporary matches 0 run function asset:effect/0258.spirit_melody/tick/heal
    scoreboard players reset $Interval Temporary

# スコア
    scoreboard players add @s 258.Tick 1
