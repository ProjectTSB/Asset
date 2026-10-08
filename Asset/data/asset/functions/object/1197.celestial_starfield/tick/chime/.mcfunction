#> asset:object/1197.celestial_starfield/tick/chime/
#
# 2tickごとに、音階から選んだ高さのチャイムをだんだん小さく鳴らし、途中で遠くの弾ける音を重ねる
#
# @within function asset:object/1197.celestial_starfield/tick/

# 2tickごとに、ペンタトニック音階の6音から高さを選ぶ
    scoreboard players operation $1197.Value Temporary = @s General.Object.Tick
    scoreboard players operation $1197.Value Temporary %= $2 Const
    execute if score $1197.Value Temporary matches 0 store result score $1197.Note Temporary run random value 0..5
    execute if score $1197.Note Temporary matches 0 run data modify storage asset:temp 1197.Pitch set value 1.0f
    execute if score $1197.Note Temporary matches 1 run data modify storage asset:temp 1197.Pitch set value 1.122f
    execute if score $1197.Note Temporary matches 2 run data modify storage asset:temp 1197.Pitch set value 1.26f
    execute if score $1197.Note Temporary matches 3 run data modify storage asset:temp 1197.Pitch set value 1.498f
    execute if score $1197.Note Temporary matches 4 run data modify storage asset:temp 1197.Pitch set value 1.682f
    execute if score $1197.Note Temporary matches 5 run data modify storage asset:temp 1197.Pitch set value 2.0f

# 経過に応じて小さくした音量で鳴らす
    scoreboard players set $1197.Value Temporary 30
    scoreboard players operation $1197.Value Temporary -= @s General.Object.Tick
    execute if data storage asset:temp 1197.Pitch store result storage asset:temp 1197.Volume float 0.04 run scoreboard players get $1197.Value Temporary
    execute if data storage asset:temp 1197.Pitch run function asset:object/1197.celestial_starfield/tick/chime/play.m with storage asset:temp 1197

# 途中で、遠くで弾ける音を重ねる
    execute if score @s General.Object.Tick matches 10 run playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1.2 1.4

# リセット
    data remove storage asset:temp 1197
    scoreboard players reset $1197.Value Temporary
    scoreboard players reset $1197.Note Temporary
