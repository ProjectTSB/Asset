#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/4.calc_vector_1
#
# アニメーションのイベントハンドラ Hg正拳突き 移動ベクトル計算
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main


# 着地点
    execute as @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] at @s align y run function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land
    data modify storage asset:temp 9F.Pos set from entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] Pos
    execute store result score @s 9F.MoveVector.X run data get storage asset:temp 9F.Pos[0] 1000
    execute store result score @s 9F.MoveVector.Y run data get storage asset:temp 9F.Pos[1] 1000
    execute store result score @s 9F.MoveVector.Z run data get storage asset:temp 9F.Pos[2] 1000

# 自身の位置との差を計算
    data modify storage asset:temp 9F.Pos set from entity @s Pos
    execute store result score @s Temporary run data get storage asset:temp 9F.Pos[0] 1000
    scoreboard players operation @s 9F.MoveVector.X -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp 9F.Pos[1] 1000
    scoreboard players operation @s 9F.MoveVector.Y -= @s Temporary
    execute store result score @s Temporary run data get storage asset:temp 9F.Pos[2] 1000
    scoreboard players operation @s 9F.MoveVector.Z -= @s Temporary

# vector/tickを計算
    scoreboard players set @s Temporary 4
    scoreboard players operation @s 9F.MoveVector.X /= @s Temporary
    scoreboard players operation @s 9F.MoveVector.Y /= @s Temporary
    scoreboard players operation @s 9F.MoveVector.Z /= @s Temporary

# 終了
    scoreboard players reset @s Temporary
    data remove storage asset:temp 9F
