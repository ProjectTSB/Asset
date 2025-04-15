#> asset:object/1117.ember_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1117/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 魔法陣表示までの遅延
    execute unless data storage asset:context this{Delay:-1} store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
    execute if data storage asset:context this{Delay:0} run function asset:object/1117.ember_circle/tick/display

# 回転させる
    execute if data storage asset:context this{Delay:-1} store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} unless score @s General.Object.Tick matches 65.. run function asset:object/1117.ember_circle/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 16

# 魔法陣を見えなくする
    execute if score @s General.Object.Tick matches 90 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 90 run data modify entity @s interpolation_duration set value 10
    execute if score @s General.Object.Tick matches 90 run data modify entity @s transformation.scale set value [0d,0d,0.01d]

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
