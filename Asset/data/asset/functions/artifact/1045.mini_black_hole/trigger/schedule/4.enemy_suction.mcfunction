#> asset:artifact/1045.mini_black_hole/trigger/schedule/4.enemy_suction
#
# モブ吸い込み処理
#
# @within function asset:artifact/1045.mini_black_hole/trigger/schedule/3.landing

#> Val
# @private
    #declare score_holder $T1.Distance
    #declare tag T1.Landing

# スコア初期化
    scoreboard players set $T1.Distance Temporary 0
# 距離を取得
    execute if entity @s[distance=..1] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..2] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..3] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..4] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..5] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..6] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..7] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..8] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..9] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..10] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..11] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..12] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..13] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..14] run scoreboard players add $T1.Distance Temporary 1
    execute if entity @s[distance=..15] run scoreboard players add $T1.Distance Temporary 1

# 距離によって重力を変化させる
    execute if score $T1.Distance Temporary matches 1 run data modify storage lib: Argument.VectorMagnitude set value 0.2
    execute if score $T1.Distance Temporary matches 2 run data modify storage lib: Argument.VectorMagnitude set value 0.4
    execute if score $T1.Distance Temporary matches 3 run data modify storage lib: Argument.VectorMagnitude set value 0.6
    execute if score $T1.Distance Temporary matches 4 run data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute if score $T1.Distance Temporary matches 5 run data modify storage lib: Argument.VectorMagnitude set value 0.10
    execute if score $T1.Distance Temporary matches 6 run data modify storage lib: Argument.VectorMagnitude set value 0.12
    execute if score $T1.Distance Temporary matches 7 run data modify storage lib: Argument.VectorMagnitude set value 0.14
    execute if score $T1.Distance Temporary matches 8 run data modify storage lib: Argument.VectorMagnitude set value 0.12
    execute if score $T1.Distance Temporary matches 9 run data modify storage lib: Argument.VectorMagnitude set value 0.10
    execute if score $T1.Distance Temporary matches 10 run data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute if score $T1.Distance Temporary matches 11 run data modify storage lib: Argument.VectorMagnitude set value 0.6
    execute if score $T1.Distance Temporary matches 12 run data modify storage lib: Argument.VectorMagnitude set value 0.4
    execute if score $T1.Distance Temporary matches 13 run data modify storage lib: Argument.VectorMagnitude set value 0.2
    execute if score $T1.Distance Temporary matches 14 run data modify storage lib: Argument.VectorMagnitude set value 0.1
    execute if score $T1.Distance Temporary matches 15 run data modify storage lib: Argument.VectorMagnitude set value 0.05

# 雪玉にMotionをセットする
    execute facing entity @s feet facing ^ ^ ^-1 run function lib:motion/

# リセット処理
    data remove storage lib: Argument
    scoreboard players reset $T1.Distance Temporary