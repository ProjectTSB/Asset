#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/4.calc_vector_0
#
# アニメーションのイベントハンドラ Kt移動突き 移動ベクトル計算
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/1.main


# 着地点
    execute as @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,sort=nearest,limit=1] at @s align y run function asset:mob/0340.twins_rubiel/app/general/6.teleport_to_land
    data modify storage asset:temp 9G.Pos set from entity @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,sort=nearest,limit=1] Pos
    execute store result score @s 9G.MoveVector.X run data get storage asset:temp 9G.Pos[0] 1000
    execute store result score @s 9G.MoveVector.Y run data get storage asset:temp 9G.Pos[1] 1000
    execute store result score @s 9G.MoveVector.Z run data get storage asset:temp 9G.Pos[2] 1000

# 自身の位置との差を計算
    data modify storage asset:temp 9G.Pos set from entity @s Pos
    execute store result score @s Temporary run data get storage asset:temp 9G.Pos[0] 1000
    scoreboard players operation @s 9G.MoveVector.X -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp 9G.Pos[1] 1000
    scoreboard players operation @s 9G.MoveVector.Y -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp 9G.Pos[2] 1000
    scoreboard players operation @s 9G.MoveVector.Z -= @s Temporary

# vector/tickを計算
    scoreboard players set @s Temporary 15
    scoreboard players operation @s 9G.MoveVector.X /= @s Temporary
    scoreboard players operation @s 9G.MoveVector.Y /= @s Temporary
    scoreboard players operation @s 9G.MoveVector.Z /= @s Temporary

# 終了
    scoreboard players reset @s Temporary
    data remove storage asset:temp 9G.Pos
