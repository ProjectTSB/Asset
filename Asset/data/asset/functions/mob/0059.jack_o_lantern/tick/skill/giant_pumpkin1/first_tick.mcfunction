#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick
#
# 最初のTickにやるべきこと
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/

#> Private
# @private
    #declare tag RotationMarker

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# 自身の後ろが壁か？
    execute if function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/check_no_wall_behind run data modify storage asset:temp NoBlockBihind set value true

# 後ろが壁でなければバックステップ
    execute if data storage asset:temp {NoBlockBihind:true} run data modify storage lib: Argument.VectorMagnitude set value 2.5
    execute if data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~180 -11.25 run function lib:motion/

# 壁なら前へステップ
    execute unless data storage asset:temp {NoBlockBihind:true} run data modify storage lib: Argument.VectorMagnitude set value 3.0
    execute unless data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~ -11.25 run function lib:motion/

# この時のrotationを記録しておく
    summon marker ~ ~ ~ {Tags:["RotationMarker"]}
    execute if data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet as @e[type=marker,tag=RotationMarker,distance=..0.01] positioned as @s run tp @s ~ ~ ~ ~ ~
    execute unless data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet as @e[type=marker,tag=RotationMarker,distance=..0.01] positioned as @s run tp @s ~ ~ ~ ~180 ~
    data modify storage asset:context this.SavedRotation0 set from entity @e[type=marker,tag=RotationMarker,distance=..0.01,limit=1] Rotation[0]
    kill @e[type=marker,tag=RotationMarker,distance=..0.01]

# 攻撃パターン設定
    execute store result score $Random Temporary run random value 0..2
    execute if score $Random Temporary matches 0 run tag @s add 1N.GiantPumpkin1.Center
    execute if score $Random Temporary matches 1 run tag @s add 1N.GiantPumpkin1.Left
    execute if score $Random Temporary matches 2 run tag @s add 1N.GiantPumpkin1.Right
    scoreboard players reset $Random Temporary

# リセット
    data remove storage asset:temp NoBlockBihind
