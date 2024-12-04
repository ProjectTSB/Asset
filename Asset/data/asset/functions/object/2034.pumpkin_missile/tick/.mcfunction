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
    execute if entity @s[scores={General.Object.Tick=3..35}] run function asset:object/2034.pumpkin_missile/tick/aim_to_target.m with storage asset:context this
    #execute unless entity @p[tag=Target] run kill @s

# ハード以上で速度を変える
    execute if entity @s[scores={General.Object.Tick=20}] if predicate api:global_vars/difficulty/min/hard run data modify storage asset:context this.Speed set value 3

# 継承して動かす
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]
