#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/4.calc_vector_0
#
# アニメーションのイベントハンドラ Kt飛び込み斬り 移動ベクトル計算
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/1.main

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [17f,17f,0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 33
    execute at @e[type=area_effect_cloud,tag=9G.Temp.Target.Aec.0,sort=nearest,limit=1] positioned ~ ~ ~ run function api:object/summon

# 着地点
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
    scoreboard players set @s Temporary 32
    scoreboard players operation @s 9G.MoveVector.X /= @s Temporary
    scoreboard players operation @s 9G.MoveVector.Y /= @s Temporary
    scoreboard players operation @s 9G.MoveVector.Z /= @s Temporary

# 終了
    scoreboard players reset @s Temporary
    data remove storage asset:temp 9G.Pos
