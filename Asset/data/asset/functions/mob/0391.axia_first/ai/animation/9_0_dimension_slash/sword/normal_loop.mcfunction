#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal_loop
#
# ディメンションソード 召喚ループ処理
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
#   asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal_loop

# 再拡散時用にリセット
    scoreboard players reset $AV.Temp Temporary

# 再拡散用スコア上昇
    scoreboard players add $AV.Loop Temporary 1

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# 拡散する
    data modify storage lib: Argument.Bounds set value [[12d,12d],[0,0],[12d,12d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# 半径22m以内ではない 又は 他と重なっている場合再拡散する
    execute at 0-0-0-0-0 unless entity @e[type=marker,tag=AV.Marker.SummonPoint,distance=..22,limit=1] run scoreboard players set $AV.Temp Temporary 1
    execute at 0-0-0-0-0 if entity @e[type=marker,tag=2014.DimSword,distance=0.001..5] run scoreboard players set $AV.Temp Temporary 1

# 条件を満たしていれば置く
    execute unless score $AV.Temp Temporary matches 1 at 0-0-0-0-0 run function asset:mob/0391.axia_first/ai/projectile/sword/0.summon

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# 満たしていなければ再拡散
    execute if score $AV.Temp Temporary matches 1 if score $AV.Loop Temporary matches ..10 run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal_loop
