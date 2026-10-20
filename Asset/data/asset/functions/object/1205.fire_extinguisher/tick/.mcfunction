#> asset:object/1205.fire_extinguisher/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1205/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 少しずつ弾速を落としていく
    execute if score @s General.Object.Tick matches 2.. unless data storage asset:context this{Speed:1} store result storage asset:context this.Speed int 0.9999999999 run data get storage asset:context this.Speed

# supe.tick
    execute at @s run function asset:object/super.tick
