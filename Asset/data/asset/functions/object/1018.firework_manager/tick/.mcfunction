#> asset:object/1018.firework_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1018/tick

# 一定間隔で召喚する
    execute store result score $Temp Temporary run data get storage asset:context this.Tick
    scoreboard players operation $Temp Temporary %= $10 Const
    execute if score $Temp Temporary matches 0 run function asset:object/1018.firework_manager/tick/spread
    scoreboard players reset $Temp Temporary

# Tick減算
    execute store result storage asset:context this.Tick int 0.999999999 run data get storage asset:context this.Tick

# 消滅処理
    execute if data storage asset:context this{Tick:0} run kill @s
