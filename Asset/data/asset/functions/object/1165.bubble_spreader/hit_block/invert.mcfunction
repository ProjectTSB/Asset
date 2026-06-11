#> asset:object/1165.bubble_spreader/hit_block/invert
#
# Objectが絶対に上を向くように
#
# @within asset:object/1165.bubble_spreader/hit_block/


# 1. 計算用に「-1」をスコアボード(Temporary)に用意しておく
    scoreboard players set $-1 Temporary -1

# 2. 現在の上下の角度(Pitch: Rotationの2番目)を、小数を維持するため1000倍して取得する
    execute store result score $pitch Temporary run data get entity @s Rotation[1] 1000

# 3. もし下を向いている（スコアがプラス）なら、-1を掛けてマイナス（上向き）に反転させる
    execute if score $pitch Temporary matches 1.. run scoreboard players operation $pitch Temporary *= $-1 Temporary

# 4. 反転させた数値を0.001倍して元のサイズに戻し、エンティティのPitchに上書きする
    execute store result entity @s Rotation[1] float 0.001 run scoreboard players get $pitch Temporary
