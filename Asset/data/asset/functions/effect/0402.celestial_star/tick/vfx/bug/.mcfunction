#> asset:effect/0402.celestial_star/tick/vfx/bug/
#
# 先頭の光の向きと距離をランダムに少し変えて描き、一覧の末尾へ戻す
#
# @within function asset:effect/0402.celestial_star/tick/vfx/bugs

#> Private
# @private
    #declare score_holder $402.Value
    #declare score_holder $402.Random

# 先頭の光を取り出す
    data modify storage asset:temp 402.Bug set from storage asset:context this.Bugs[0]
    data remove storage asset:context this.Bugs[0]

# 水平の向きをランダムに変えながら、少しずつ時計回りに回る
    execute store result score $402.Value Temporary run data get storage asset:temp 402.Bug.Yaw
    execute store result score $402.Random Temporary run random value -35..35
    scoreboard players operation $402.Value Temporary += $402.Random Temporary
    execute store result storage asset:temp 402.Bug.Yaw int 1 run scoreboard players add $402.Value Temporary 6

# 上下の向きをランダムに変え、-50〜60度に収める
    execute store result score $402.Value Temporary run data get storage asset:temp 402.Bug.Pitch
    execute store result score $402.Random Temporary run random value -20..20
    scoreboard players operation $402.Value Temporary += $402.Random Temporary
    execute if score $402.Value Temporary matches ..-51 run scoreboard players set $402.Value Temporary -50
    execute if score $402.Value Temporary matches 61.. run scoreboard players set $402.Value Temporary 60
    execute store result storage asset:temp 402.Bug.Pitch int 1 run scoreboard players get $402.Value Temporary

# 中心からの距離をランダムに変え、0.7〜1.3mに収める
    execute store result score $402.Value Temporary run data get storage asset:temp 402.Bug.Radius
    execute store result score $402.Random Temporary run random value -8..8
    scoreboard players operation $402.Value Temporary += $402.Random Temporary
    execute if score $402.Value Temporary matches ..69 run scoreboard players set $402.Value Temporary 70
    execute if score $402.Value Temporary matches 131.. run scoreboard players set $402.Value Temporary 130
    execute store result storage asset:temp 402.Bug.Radius int 1 run scoreboard players get $402.Value Temporary
    execute store result storage asset:temp 402.Bug.Distance double 0.01 run scoreboard players get $402.Value Temporary

# 光を描き、一覧の末尾へ戻す
    function asset:effect/0402.celestial_star/tick/vfx/bug/draw.m with storage asset:temp 402.Bug
    data remove storage asset:temp 402.Bug.Distance
    data modify storage asset:context this.Bugs append from storage asset:temp 402.Bug

# リセット
    data remove storage asset:temp 402.Bug
    scoreboard players reset $402.Value Temporary
    scoreboard players reset $402.Random Temporary
