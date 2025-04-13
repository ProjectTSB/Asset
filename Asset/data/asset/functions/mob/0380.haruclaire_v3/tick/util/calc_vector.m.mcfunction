#> asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m
#
# 汎用処理 移動ベクトル計算
#
# @within asset:mob/0380.haruclaire_v3/tick/**
#> Val
# @private
    #declare score_holder $TempPos.X
    #declare score_holder $TempPos.Y
    #declare score_holder $TempPos.Z

# 着地点
    data modify storage asset:temp AK.Pos set from entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] Pos
    execute store result score $TempPos.X Temporary run data get storage asset:temp AK.Pos[0] 1000
    execute store result score $TempPos.Y Temporary run data get storage asset:temp AK.Pos[1] 1000
    execute store result score $TempPos.Z Temporary run data get storage asset:temp AK.Pos[2] 1000

# 自身の位置との差を計算
    data modify storage asset:temp AK.Pos set from entity @s Pos
    execute store result score @s Temporary run data get storage asset:temp AK.Pos[0] 1000
    scoreboard players operation $TempPos.X Temporary -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp AK.Pos[1] 1000
    scoreboard players operation $TempPos.Y Temporary -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp AK.Pos[2] 1000
    scoreboard players operation $TempPos.Z Temporary -= @s Temporary

# vector/tickを計算
    $scoreboard players set @s Temporary $(Tick)
    execute store result storage asset:context this.Move.X float 0.001 run scoreboard players operation $TempPos.X Temporary /= @s Temporary
    execute store result storage asset:context this.Move.Y float 0.001 run scoreboard players operation $TempPos.Y Temporary /= @s Temporary
    execute store result storage asset:context this.Move.Z float 0.001 run scoreboard players operation $TempPos.Z Temporary /= @s Temporary

# 終了
    scoreboard players reset $TempPos.X Temporary
    scoreboard players reset $TempPos.Y Temporary
    scoreboard players reset $TempPos.Z Temporary
    scoreboard players reset @s Temporary
    data remove storage asset:temp 9G
