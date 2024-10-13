#> asset:object/2036.pumpkin_rain/tick/expand
#
#
#
# @within function asset:object/2036.pumpkin_rain/tick/

# カウントする
    scoreboard players add @s 2036.ExpandCount 1

# start_interpolationを設定
    data modify entity @s start_interpolation set value 0

# プレイヤーの方を見る
    execute facing entity @p eyes rotated ~180 0 run tp @s ~ ~ ~ ~ ~

# 膨らむ
    execute if entity @s[scores={2036.ExpandCount=1}] run data modify entity @s transformation.scale set value [1.5f,1.5f,1.5f]

    execute if entity @s[scores={2036.ExpandCount=2}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={2036.ExpandCount=2}] run data modify entity @s transformation.scale set value [0.8f,0.8f,0.8f]

    execute if entity @s[scores={2036.ExpandCount=3}] run data modify entity @s interpolation_duration set value 2
    execute if entity @s[scores={2036.ExpandCount=3}] run data modify entity @s transformation.scale set value [3.0f,3.0f,3.0f]

    execute if entity @s[scores={2036.ExpandCount=4}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={2036.ExpandCount=4}] run data modify entity @s transformation.translation set value [0f,2.5f,0f]
    execute if entity @s[scores={2036.ExpandCount=4}] run data modify entity @s interpolation_duration set value 3
    execute if entity @s[scores={2036.ExpandCount=4}] run data modify entity @s transformation.scale set value [2.0f,2.0f,2.0f]
