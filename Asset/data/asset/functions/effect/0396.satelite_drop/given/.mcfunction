#> asset:effect/0396.satelite_drop/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0396.satelite_drop/_/given

#> Private
# @within function asset:effect/0396.satelite_drop/given/**
    #declare score_holder $Stack
    #declare score_holder $360

# (Stack)個のObject1192を召喚
    execute store result score $Stack Temporary run data get storage asset:context Stack
    #(360/Stack)°間隔で召喚
    scoreboard players set $360 Temporary 360
    execute store result storage asset:temp Args.Angle int 1 run scoreboard players operation $360 Temporary /= $Stack Temporary
    execute store result storage asset:temp Args.Count int 1 run scoreboard players get $Stack Temporary
    execute at @s positioned ~ ~0.75 ~ run function asset:effect/0396.satelite_drop/given/summon.m with storage asset:temp Args

# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $360 Temporary
    data remove storage asset:temp Args
