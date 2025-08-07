#> asset:object/1119.staff_of_the_willless_ending/tick/direction
#
#
#
# @within function asset:object/1119.staff_of_the_willless_ending/tick/

#> Private
# @private
    #declare score_holder $PlayTimeDecimal
    #declare score_holder $PlayTimeSeconds
    #declare score_holder $PlayTimeMinutes
    #declare score_holder $PlayTimeHours

# プレイ時間
    scoreboard players operation $PlayTimeDecimal Temporary = $PlayTime Global
    scoreboard players operation $PlayTimeSeconds Temporary = $PlayTimeDecimal Temporary
    scoreboard players operation $PlayTimeSeconds Temporary /= $20 Const
    scoreboard players operation $PlayTimeMinutes Temporary = $PlayTimeSeconds Temporary
    scoreboard players operation $PlayTimeMinutes Temporary /= $60 Const
    scoreboard players operation $PlayTimeHours Temporary = $PlayTimeMinutes Temporary
    scoreboard players operation $PlayTimeHours Temporary /= $60 Const

    execute store result storage asset:temp Temp.Hours int 1 run scoreboard players get $PlayTimeHours Temporary
    execute store result storage asset:temp Temp.Minutes int 1 run scoreboard players operation $PlayTimeMinutes Temporary %= $60 Const
    execute store result storage asset:temp Temp.Seconds int 1 run scoreboard players operation $PlayTimeSeconds Temporary %= $60 Const
    execute store result storage asset:temp Temp.Decimal int 5 run scoreboard players operation $PlayTimeDecimal Temporary %= $20 Const

    execute if score $PlayTimeHours Temporary matches 0..9 run data modify storage asset:temp Temp.Time append value "0"
    data modify storage asset:temp Temp.Time append string storage asset:temp Temp.Hours
    data modify storage asset:temp Temp.Time append value ":"
    execute if score $PlayTimeMinutes Temporary matches 0..9 run data modify storage asset:temp Temp.Time append value "0"
    data modify storage asset:temp Temp.Time append string storage asset:temp Temp.Minutes
    data modify storage asset:temp Temp.Time append value ":"
    execute if score $PlayTimeSeconds Temporary matches 0..9 run data modify storage asset:temp Temp.Time append value "0"
    data modify storage asset:temp Temp.Time append string storage asset:temp Temp.Seconds
    data modify storage asset:temp Temp.Time append value "'"
    execute if score $PlayTimeDecimal Temporary matches 0..1 run data modify storage asset:temp Temp.Time append value "0"
    data modify storage asset:temp Temp.Time append string storage asset:temp Temp.Decimal

# タイトルコマンド
    title @a times 10 60 30
    title @a title [{"text":"WORLD PURIFIED","bold":true,"color":"yellow"}]
    execute if data storage global Config{ShowPlayTimeOnDispel: true} run title @a subtitle {"text":"","bold":false,"extra":[{"text":"TIME ","color":"gold"},{"storage":"asset:temp","nbt":"Temp.Time[]","separator":""}]}
    execute if data storage global Config{ShowPlayTimeOnDispel:false} run title @a subtitle {"text":""}

# Particle
    execute at @a run particle end_rod ~ ~1.1 ~ 0.15 0.15 0.15 2 150 force @a
# SE
    playsound ogg:random.levelup player @a ~ ~ ~ 1 0.8 1

# 神の花火（いらんかも
# ウィキ
    summon firework_rocket 3060 117 -501 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Flicker:1b,Trail:1b,Colors:[I;8913151],FadeColors:[I;13391103]}]}}}}
# ウルバン
    summon firework_rocket 3060 117 -523 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;16715535],FadeColors:[I;16725558]}]}}}}
# フローラ
    summon firework_rocket 3071 117 -529 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Trail:1b,Colors:[I;16774912],FadeColors:[I;6749952]}]}}}}
# ルーモア
    summon firework_rocket 3082 117 -501 {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:2b,Colors:[I;16774912]}]}}}}
# ニャプトフ
    summon firework_rocket 3082 117 -523 {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Colors:[I;16751831]}]}}}}

# リセット
    scoreboard players reset $PlayTimeHours Temporary
    scoreboard players reset $PlayTimeMinutes Temporary
    scoreboard players reset $PlayTimeSeconds Temporary
    scoreboard players reset $PlayTimeDecimal Temporary
    data remove storage asset:temp Temp
