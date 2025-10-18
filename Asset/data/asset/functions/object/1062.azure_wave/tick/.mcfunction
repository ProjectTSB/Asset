#> asset:object/1062.azure_wave/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1062/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    #execute if score @s General.Object.Tick matches 1 run function asset:object/1062.azure_wave/tick/vfx/1
    #execute if score @s General.Object.Tick matches 2 run function asset:object/1062.azure_wave/tick/vfx/2
    #execute if score @s General.Object.Tick matches 3 run function asset:object/1062.azure_wave/tick/vfx/3
    #execute if score @s General.Object.Tick matches 4 run function asset:object/1062.azure_wave/tick/vfx/4
    #execute if score @s General.Object.Tick matches 5 run function asset:object/1062.azure_wave/tick/vfx/5

#tp @s ~ ~ ~ ~3 ~

# 拡大
    execute if score @s General.Object.Tick matches 3 run function asset:object/1062.azure_wave/tick/transformation

# 消滅処理
    kill @s[scores={General.Object.Tick=30..}]
