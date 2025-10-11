#> asset:object/1061.azure_jelly/tick/move/speed_multiplier.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/

#> Private
# @private
    #declare score_holder $Speed
    #declare score_holder $SpeedMultiplier

#tellraw @a {"storage":"asset:context","nbt":"this.SpeedMultiplier"}

# SpeedMultiplier:1ならそのまま実行してreturn
    $execute if data storage asset:context this{SpeedMultiplier:1} run return run function asset:object/1061.azure_jelly/tick/move/check_collision.m {Speed:$(Speed)}

# 設定された速度と倍率を取得
    $data modify storage asset:temp 1061.Speed set value $(Speed)
    execute store result score $Speed Temporary run data get storage asset:temp 1061.Speed 100
    execute store result score $SpeedMultiplier Temporary run data get storage asset:context this.SpeedMultiplier 100


# 速度をstorageに入れてマクロで実行
    execute store result storage asset:temp 1061.Speed float 0.0001 run scoreboard players operation $Speed Temporary *= $SpeedMultiplier Temporary
    function asset:object/1061.azure_jelly/tick/move/check_collision.m with storage asset:temp 1061

# リセット
    scoreboard players reset $Speed Temporary
    scoreboard players reset $SpeedMultiplier Temporary
    data remove storage asset:temp 1061
