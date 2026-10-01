#> asset:object/1188.banishing_ring/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1188/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 最初のtickだけ展開アニメーション
    execute if score @s General.Object.Tick matches 2 run data modify entity @s transformation.scale set value [4.5f,4.5f,0.0f]

# Interval減算
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:object/1188.banishing_ring/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]
