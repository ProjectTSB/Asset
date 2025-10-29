#> asset:effect/0258.spirit_melody/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0258.spirit_melody/_/tick

#> Private
# @private
    #declare score_holder $Interval
    #declare score_holder $Note

# Noteが1以上の時は3で余剰算する
    execute if entity @s[scores={258.Note=1..}] run scoreboard players operation $Note Temporary = @s 258.Note
    execute if entity @s[scores={258.Note=1..}] run scoreboard players operation $Note Temporary %= $3 Const

# 余りが0-1の時は2回鳴らす、2の時は1回鳴らす
    execute if entity @s[scores={258.Note=1..}] if score $Note Temporary matches 0..1 run scoreboard players add @s 258.RunCount 1
    execute if entity @s[scores={258.Note=1..,258.RunCount=2..}] if score $Note Temporary matches 0..1 run scoreboard players add @s 258.Note 1
    execute if entity @s[scores={258.Note=1..,258.RunCount=2..}] run scoreboard players reset @s 258.RunCount
    execute if entity @s[scores={258.Note=1..}] if score $Note Temporary matches 2 run scoreboard players add @s 258.Note 1
    execute if entity @s[scores={258.Note=1..}] run scoreboard players reset $Note Temporary

# 0の時はそのまま増やす
    execute if entity @s[scores={258.Tick=0}] run scoreboard players add @s 258.Note 1

# 演奏
    execute store result storage asset:context this.Note int 1 run scoreboard players get @s 258.Note
    function asset:effect/0258.spirit_melody/tick/note/.m with storage asset:context this

# 演出
    execute if predicate lib:random_pass_per/30 positioned ~ ~0.3 ~ summon marker run function asset:effect/0258.spirit_melody/tick/vfx/note

# 一定間隔で回復とvfx表示
    scoreboard players operation $Interval Temporary = @s 258.Tick
    scoreboard players operation $Interval Temporary %= $18 Const
    execute if score $Interval Temporary matches 0 run function asset:effect/0258.spirit_melody/tick/heal
    execute if score $Interval Temporary matches 0 rotated 0 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    execute if score $Interval Temporary matches 3 rotated 60 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    execute if score $Interval Temporary matches 6 rotated 120 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    execute if score $Interval Temporary matches 9 rotated 180 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    execute if score $Interval Temporary matches 12 rotated 240 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    execute if score $Interval Temporary matches 15 rotated 300 0 positioned ~ ~0.2 ~ run function asset:effect/0258.spirit_melody/tick/vfx/circle
    scoreboard players reset $Interval Temporary

# スコア
    scoreboard players add @s 258.Tick 1
