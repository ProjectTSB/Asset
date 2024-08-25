#> asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/normal
#
# ノーマル 魔導書召喚
#
# @within function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/

# Markerを呼び出す
    execute at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run tp 0-0-0-0-0 ^ ^ ^ ~ 0

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# 魔導書召喚上限
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..25]

# 魔導書召喚
    execute if score $AW.Temp Temporary matches ..15 at 0-0-0-0-0 positioned ^ ^ ^10 run function asset:mob/0392.ecual_first/ai/general/9.summon_book

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# スコアリセット
    scoreboard players reset $AW.Temp Temporary
