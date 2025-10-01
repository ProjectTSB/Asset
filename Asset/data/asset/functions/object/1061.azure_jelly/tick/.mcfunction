#> asset:object/1061.azure_jelly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1061/tick

#> Private
# @private
    #declare score_holder $OwnerID
    #declare score_holder $Interval

# OwnerにTag付与
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = @p UserID run tag @p add 1061.Owner

# インターバル
    #scoreboard players operation $Interval Temporary = @s General.Object.Tick
    #scoreboard players operation $Interval Temporary %= $43 Const

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 周囲にOwnerがいなければOwnerの方を向く
    #execute if score $Interval Temporary matches 0 unless entity @p[tag=1061.Owner,distance=..5] facing entity @p[tag=1061.Owner] eyes run function asset:object/1061.azure_jelly/tick/forward_spread

# 周囲にOwnerがいればランダムな方向を向く
    #execute if score $Interval Temporary matches 0 if entity @p[tag=1061.Owner,distance=..5] run function asset:object/1061.azure_jelly/tick/random_rotate

# 演出
    #execute if score $Interval Temporary matches 0 at @s rotated ~ 0 run function asset:object/1061.azure_jelly/tick/vfx

# 移動
    execute if score $Interval Temporary matches 0 at @s run tp @s ^ ^ ^ ~ -10
    #execute if score $Interval Temporary matches 0..30 at @s run tp @s ^ ^ ^0.3 ~ ~2
    execute if score $Interval Temporary matches 0..5 at @s run tp @s ^ ^ ^0.2 ~ ~-1
    execute if score $Interval Temporary matches 6..8 at @s run tp @s ^ ^ ^0.3 ~ ~-2
    execute if score $Interval Temporary matches 9..10 at @s run tp @s ^ ^ ^0.4 ~ ~-3
    execute if score $Interval Temporary matches 11..12 at @s run tp @s ^ ^ ^0.3 ~ ~-3
    execute if score $Interval Temporary matches 13..17 at @s run tp @s ^ ^ ^0.2 ~ ~2
    execute if score $Interval Temporary matches 18..21 at @s run tp @s ^ ^ ^0.2 ~ ~3
    execute if score $Interval Temporary matches 22..32 at @s run tp @s ^ ^ ^0.25 ~ ~4
    execute if score $Interval Temporary matches 33..35 at @s run tp @s ^ ^ ^0.3 ~ ~6
    execute if score $Interval Temporary matches 36..39 at @s run tp @s ^ ^ ^0.2 ~ ~6
    execute if score $Interval Temporary matches 40..42 at @s run tp @s ^ ^ ^0.1 ~ ~6

# 地面に接触したら上を向く
    #execute at @s unless block ~ ~-0.6 ~ #lib:no_collision run function asset:object/1061.azure_jelly/tick/vfx
    #execute at @s unless block ~ ~-0.6 ~ #lib:no_collision run tp @s ~ ~ ~ ~ -30

# リセット
    scoreboard players reset $OwnerID Temporary
    scoreboard players reset $Interval Temporary
    tag @p[tag=1061.Owner] remove 1061.Owner

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=600..}] run function asset:object/1061.azure_jelly/tick/kill
