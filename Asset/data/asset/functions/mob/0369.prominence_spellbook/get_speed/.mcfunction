#> asset:mob/0369.prominence_spellbook/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/369/get_speed

# super.get_speed
    function asset:mob/super.method

# movement_speedはマイナスにできないため、後退モードの場合、速度を-1倍する
    execute if score @s A9.StepBack matches 0.. store result storage asset:temp 2003.Speed double -0.01 run data get storage asset:temp 2003.Speed 100
