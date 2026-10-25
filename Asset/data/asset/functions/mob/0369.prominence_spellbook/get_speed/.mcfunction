#> asset:mob/0369.prominence_spellbook/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/369/get_speed

# super.get_speed
    function asset:mob/super.method

# movement_speedはマイナスにできないため、後退モードの場合、速度を-1倍する
    execute if data storage asset:context this{IsMoveBack:true} store result storage asset:context this.Speed double -0.01 run data get storage asset:context this.Speed 100

