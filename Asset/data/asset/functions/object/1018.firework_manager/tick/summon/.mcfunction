#> asset:object/1018.firework_manager/tick/summon/
#
#
#
# @within function asset:object/1018.firework_manager/tick/spread

# 花火を召喚
    summon firework_rocket ~ ~ ~ {Tags:["FireworkInit"],Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;16777215]}]}}}}

# LifeTimeに突っ込む数値をランダムで決める
    execute store result storage asset:temp Firework.LifeTime int 1 run random value 30..41

# storageに必要なnbtを設定しておく
    data modify storage asset:temp Firework.Explosions set value {Flicker:1b}

# 花火の形を設定する
    execute store result score $RandomShape Temporary run random value 0..5
    execute if score $RandomShape Temporary matches 0..3 run data modify storage asset:temp Firework.Explosions.Type set value 1
    execute if score $RandomShape Temporary matches 4 run data modify storage asset:temp Firework.Explosions.Type set value 2
    execute if score $RandomShape Temporary matches 5 run data modify storage asset:temp Firework.Explosions.Type set value 3

# 花火の色の数を1~3でランダムに決める
    execute store result score $ColorCount Temporary run random value 1..3

# 花火の色のnbt用のstorageをint_array_list型に初期化する
    data modify storage asset:temp Firework.Colors set value [I;]

# storageに色のデータを突っ込む
    function asset:object/1018.firework_manager/tick/summon/append_color/

# データ適用
    execute as @e[type=firework_rocket,tag=FireworkInit,distance=..0.01,limit=1] run function asset:object/1018.firework_manager/tick/summon/set_data

# リセット
    scoreboard players reset $RandomShape Temporary
    scoreboard players reset $ColorCount Temporary
    scoreboard players reset $RecursiveCount Temporary
    data remove storage asset:temp Firework
