#> asset:object/1200.starlight_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1200/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if score @s General.Object.Tick matches 3 run function asset:object/1200.starlight_circle/tick/transform/0
    execute if score @s General.Object.Tick matches 3 on passengers run function asset:object/1200.starlight_circle/tick/transform/0

# 回転させる
    execute if score @s General.Object.Tick matches 10..24 store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} run function asset:object/1200.starlight_circle/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 16

# 消える
    execute if score @s General.Object.Tick matches 25 run function asset:object/1200.starlight_circle/tick/transform/1
    execute if score @s General.Object.Tick matches 25 on passengers run function asset:object/1200.starlight_circle/tick/transform/1

# 消滅処理
    execute if score @s General.Object.Tick matches 37.. run function asset:object/1200.starlight_circle/tick/kill
