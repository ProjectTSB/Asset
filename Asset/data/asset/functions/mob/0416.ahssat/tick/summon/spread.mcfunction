#> asset:mob/0416.ahssat/tick/summon/spread
#
# 拡散
#
# @within function asset:mob/0416.ahssat/tick/

# Markerを呼び出す
    execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 拡散する
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0,0],[2d,2d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# 配置
    execute at 0-0-0-0-0 if block ~ ~ ~ #lib:no_collision run function asset:mob/0416.ahssat/tick/summon/summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# スコアリセット
    execute store result score @s General.Mob.Tick run random value 0..20
