#> asset:object/1156.refraction_prism/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1156/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute unless score @s General.Object.Tick matches 3.. run return fail

# tp
    execute if score @s General.Object.Tick matches 3..13 run tp @s ^ ^ ^0.12
    execute if score @s General.Object.Tick matches 14..21 run tp @s ^ ^ ^0.09
    execute if score @s General.Object.Tick matches 22..27 run tp @s ^ ^ ^0.05
    execute if score @s General.Object.Tick matches 28.. run tp @s ^ ^ ^0.01

# transformation
    execute if score @s General.Object.Tick matches 3 run function asset:object/1156.refraction_prism/tick/transformation/0/
    execute if score @s General.Object.Tick matches 15 run function asset:object/1156.refraction_prism/tick/transformation/1/
    execute if score @s General.Object.Tick matches 25 run function asset:object/1156.refraction_prism/tick/transformation/2/

# kill
    execute if score @s General.Object.Tick matches 30.. run function asset:object/1156.refraction_prism/tick/kill
