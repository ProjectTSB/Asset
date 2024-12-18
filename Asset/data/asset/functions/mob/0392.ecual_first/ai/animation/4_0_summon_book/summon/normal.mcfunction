#> asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/normal
#
# ノーマル 魔導書召喚
#
# @within function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/

#> ScoreHolder
# @private
    #declare score_holder $AW.Book

# Markerを呼び出す
    execute at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run tp 0-0-0-0-0 ^ ^ ^ ~ 0

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# 魔導書召喚上限
    scoreboard players set $AW.Book Temporary 0
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=399},distance=..35]
    scoreboard players operation $AW.Book Temporary += $AW.Temp Temporary
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=400},distance=..35]
    scoreboard players operation $AW.Book Temporary += $AW.Temp Temporary
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=401},distance=..35]
    scoreboard players operation $AW.Book Temporary += $AW.Temp Temporary
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=402},distance=..35]
    scoreboard players operation $AW.Book Temporary += $AW.Temp Temporary

# 魔導書召喚
    execute if score $AW.Book Temporary matches ..8 at 0-0-0-0-0 positioned ^ ^ ^10 run function asset:mob/0392.ecual_first/ai/general/9.summon_book

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# スコアリセット
    scoreboard players reset $AW.Temp Temporary
    scoreboard players reset $AW.Book Temporary
