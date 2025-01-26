#> asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/loop
#
# 水魔法 ループ
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
#   asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/loop

# 再拡散時用にリセット
    scoreboard players reset $AW.Temp Temporary

# 再拡散用スコア上昇
    scoreboard players add $AW.Loop Temporary 1

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 拡散する
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0,0],[15d,15d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# 半径22m以内ではない 又は 他と重なっている場合再拡散する
    execute at 0-0-0-0-0 unless entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..22,limit=1] run scoreboard players set $AW.Temp Temporary 1
    execute at 0-0-0-0-0 if entity @e[type=item_display,tag=2017.WaterMagic,distance=0.001..8] run scoreboard players set $AW.Temp Temporary 1

# 条件を満たしていれば置く
    execute unless score $AW.Temp Temporary matches 1 at 0-0-0-0-0 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/0.summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# 満たしていなければ再拡散
    execute if score $AW.Temp Temporary matches 1 if score $AW.Loop Temporary matches ..10 run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/loop
