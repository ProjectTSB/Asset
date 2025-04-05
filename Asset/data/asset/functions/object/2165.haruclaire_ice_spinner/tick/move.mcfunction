#> asset:object/2165.haruclaire_ice_spinner/tick/move
#
# Objectのtick時の処理
#
# @within asset:object/2165.haruclaire_ice_spinner/tick/

# 直径8m
# 移動
    execute if entity @s[tag=!2165.IsLong,scores={General.Object.Tick=1..80}] run tp @s ^ ^ ^0.523 ~7.5 ~
    execute if entity @s[tag=!2165.IsLong,scores={General.Object.Tick=81..160}] run tp @s ^ ^ ^0.348 ~5 ~
    execute if entity @s[tag=!2165.IsLong,scores={General.Object.Tick=161..240}] run tp @s ^ ^ ^0.174 ~2.5 ~
    execute if entity @s[tag=!2165.IsLong,scores={General.Object.Tick=241..}] run tp @s ^ ^ ^0.087 ~1.25 ~

# 直径14m
# 0.1744444444444444
# 移動
    execute if entity @s[tag=2165.IsLong,scores={General.Object.Tick=1..80}] run tp @s ^ ^ ^-1.308 ~-7.5 ~
    execute if entity @s[tag=2165.IsLong,scores={General.Object.Tick=81..160}] run tp @s ^ ^ ^-0.872 ~-5 ~
    execute if entity @s[tag=2165.IsLong,scores={General.Object.Tick=161..240}] run tp @s ^ ^ ^-0.436 ~-2.5 ~
    execute if entity @s[tag=2165.IsLong,scores={General.Object.Tick=241..}] run tp @s ^ ^ ^-0.218 ~-1.25 ~
