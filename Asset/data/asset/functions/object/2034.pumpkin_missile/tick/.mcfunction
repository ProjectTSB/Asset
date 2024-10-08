#> asset:object/2034.pumpkin_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2034/tick

#> Private
# @private
    #declare tag Target

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ターゲットに追尾する
    execute at @a[distance=..50] if score @s 2034.TargetID = @p UserID run tag @p add Target
    execute if entity @s[scores={General.Object.Tick=3..35}] facing entity @p[tag=Target] eyes positioned ^ ^ ^-120 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    #execute unless entity @p[tag=Target] run kill @s
    tag @p[tag=Target,distance=..50] remove Target

# 速度を変える
    execute if entity @s[scores={General.Object.Tick=35}] if predicate api:global_vars/difficulty/min/normal run data modify storage asset:context this.Speed set value 4

# 継承して動かす
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
