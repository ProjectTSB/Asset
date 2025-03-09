#> asset:object/1045.magic_bullet_square/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1045/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 魔法陣表示までの遅延
    execute unless data storage asset:context this{Delay:-1} store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
    execute if data storage asset:context this{Delay:0} run function asset:object/1045.magic_bullet_square/tick/display

# 魔法陣を見えなくする
    execute if entity @s[scores={General.Object.Tick=35}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=35}] run data modify entity @s interpolation_duration set value 5
    execute if entity @s[scores={General.Object.Tick=35}] run data modify entity @s transformation.scale set value [0d,0d,0.01d]

# 消滅処理
    kill @s[scores={General.Object.Tick=40..}]
