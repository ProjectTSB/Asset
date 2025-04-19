#> asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/summon/hard
#
# ハード クリスタル召喚
#
# @within function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/

#> ScoreHolder
# @private
    #declare score_holder $AW.Crystal

# Markerを呼び出す
    execute at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run tp 0-0-0-0-0 ^ ^ ^ ~ 0

# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000

# クリスタル召喚上限
    scoreboard players set $AW.Crystal Temporary 0
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=397},distance=..25]
    scoreboard players operation $AW.Crystal Temporary += $AW.Temp Temporary
    execute at 0-0-0-0-0 store result score $AW.Temp Temporary if entity @e[type=wither_skeleton,scores={MobID=398},distance=..25]
    scoreboard players operation $AW.Crystal Temporary += $AW.Temp Temporary

# クリスタル召喚
    execute if score $AW.Crystal Temporary matches ..4 at 0-0-0-0-0 positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/general/4.summon_turret
    execute if score $AW.Crystal Temporary matches ..4 at 0-0-0-0-0 rotated ~90 0 positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/general/4.summon_turret
    execute if score $AW.Crystal Temporary matches ..4 at 0-0-0-0-0 rotated ~180 0 positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/general/5.summon_healer
    execute if score $AW.Crystal Temporary matches ..4 at 0-0-0-0-0 rotated ~270 0 positioned ^ ^ ^15 run function asset:mob/0392.ecual_first/ai/general/4.summon_turret

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# スコアリセット
    scoreboard players reset $AW.Crystal Temporary
    scoreboard players reset $AW.Temp Temporary
