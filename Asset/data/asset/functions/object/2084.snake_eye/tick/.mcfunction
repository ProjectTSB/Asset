#> asset:object/2084.snake_eye/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2084/tick

# Tick加算
scoreboard players add @s General.Object.Tick 1

# super
execute at @s run function asset:object/super.tick

# 消滅処理
kill @s[scores={General.Object.Tick=1000..}]
