#> asset:object/1106.mini_black_hole/tick/explode/suction/
#
#
#
# @within asset:object/1106.mini_black_hole/tick/explode/

# 距離を取得
    function lib:distance/as_to_at
    execute store result score $UQ.Temp Temporary run data get storage lib: Return.Distance
# 距離に応じてベクトルを修正
    execute if score $UQ.Temp Temporary matches 1 run data modify storage lib: Argument.VectorMagnitude set value 0.2
    execute if score $UQ.Temp Temporary matches 2 run data modify storage lib: Argument.VectorMagnitude set value 0.4
    execute if score $UQ.Temp Temporary matches 3 run data modify storage lib: Argument.VectorMagnitude set value 0.6
    execute if score $UQ.Temp Temporary matches 4 run data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute if score $UQ.Temp Temporary matches 5 run data modify storage lib: Argument.VectorMagnitude set value 0.10
    execute if score $UQ.Temp Temporary matches 6 run data modify storage lib: Argument.VectorMagnitude set value 0.12
    execute if score $UQ.Temp Temporary matches 7 run data modify storage lib: Argument.VectorMagnitude set value 0.14
    execute if score $UQ.Temp Temporary matches 8 run data modify storage lib: Argument.VectorMagnitude set value 0.12
    execute if score $UQ.Temp Temporary matches 9 run data modify storage lib: Argument.VectorMagnitude set value 0.10
    execute if score $UQ.Temp Temporary matches 10 run data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute if score $UQ.Temp Temporary matches 11 run data modify storage lib: Argument.VectorMagnitude set value 0.6
    execute if score $UQ.Temp Temporary matches 12 run data modify storage lib: Argument.VectorMagnitude set value 0.4
    execute if score $UQ.Temp Temporary matches 13 run data modify storage lib: Argument.VectorMagnitude set value 0.2
    execute if score $UQ.Temp Temporary matches 14 run data modify storage lib: Argument.VectorMagnitude set value 0.1
    execute if score $UQ.Temp Temporary matches 15 run data modify storage lib: Argument.VectorMagnitude set value 0.05
# 実行
    execute facing entity @s feet facing ^ ^ ^-1 run function lib:motion/

# リセット
    data remove storage lib: Argument
    scoreboard players reset $UQ.Temp Temporary
