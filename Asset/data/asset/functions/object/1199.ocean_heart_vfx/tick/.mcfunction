#> asset:object/1199.ocean_heart_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1199/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if score @s General.Object.Tick matches 3 run function asset:object/1199.ocean_heart_vfx/tick/transformation

# 消滅処理
  #  kill @s[scores={General.Object.Tick=13..}]
