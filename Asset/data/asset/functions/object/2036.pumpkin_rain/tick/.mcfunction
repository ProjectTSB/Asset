#> asset:object/2036.pumpkin_rain/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2036/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 着陸時、スコアを変更
    execute if entity @s[tag=2036.OnGround,scores={General.Object.Tick=..499}] run scoreboard players set @s General.Object.Tick 500

    execute if entity @s[scores={General.Object.Tick=508}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={General.Object.Tick=508}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=508}] run data modify entity @s transformation.scale set value [2.0f,2.0f,2.0f]

    execute if entity @s[scores={General.Object.Tick=510}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=510}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=510}] run data modify entity @s transformation.scale set value [0.8f,0.8f,0.8f]

    execute if entity @s[scores={General.Object.Tick=518}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={General.Object.Tick=518}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=518}] run data modify entity @s transformation.translation set value [0.0f,0.0f,-0.5f]
    execute if entity @s[scores={General.Object.Tick=518}] run data modify entity @s transformation.scale set value [3.0f,3.0f,3.0f]

    execute if entity @s[scores={General.Object.Tick=520}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={General.Object.Tick=520}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=520}] run data modify entity @s transformation.scale set value [2.0f,2.0f,2.0f]

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=530..}] run function asset:object/call.m {method:kill}

# 回転
    execute if entity @s[tag=!2036.OnGround] run tp @s ~ ~ ~ ~30 ~

# 継承
    execute if entity @s[tag=!2036.OnGround] at @s run function asset:object/super.tick

# エンティティヒット
    execute if entity @s[tag=2036.OnGround] at @s run function asset:object/call.m {method:detect_hit_entity}
    execute if entity @s[tag=2036.OnGround] if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:hit_entity}
    execute if entity @s[tag=2036.OnGround] run data remove storage asset:context IsHitEntity
