#> asset:object/2034.pumpkin_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2034/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# playsound
    #playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.1 2

# Tickによって追尾の強さを変える
    execute if entity @s[scores={General.Object.Tick=3..20}] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    #execute if entity @s[scores={General.Object.Tick=14..16}] facing entity @p eyes positioned ^ ^ ^-500 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if entity @s[scores={General.Object.Tick=21..}] facing entity @p eyes positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 速度を変える
    #execute if entity @s[scores={General.Object.Tick=17}] run data modify storage asset:context this.MovePerStep set value 0.

# 継承して動かす
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
