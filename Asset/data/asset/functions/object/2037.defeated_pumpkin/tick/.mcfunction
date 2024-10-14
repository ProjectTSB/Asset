#> asset:object/2037.defeated_pumpkin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2037/tick

# 一定tickになったらTagを削除
    execute if entity @s[scores={General.Object.Tick=40}] run tag @s remove 2037.FirstLevitation
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.Speed set value 2

# デバッグ用
    #execute if entity @s[scores={General.Object.Tick=40..}] run scoreboard players add @s Temporary 1

# スピード設定
    execute if entity @s[scores={General.Object.Tick=40}] run data modify storage asset:context this.MovePerStep set value -1
    execute if entity @s[scores={General.Object.Tick=44}] run data modify storage asset:context this.MovePerStep set value -0.25
    execute if entity @s[scores={General.Object.Tick=48}] run data modify storage asset:context this.MovePerStep set value -0.125
    execute if entity @s[scores={General.Object.Tick=56}] run data modify storage asset:context this.MovePerStep set value 0
    execute if entity @s[scores={General.Object.Tick=60}] run data modify storage asset:context this.MovePerStep set value 0.125
    execute if entity @s[scores={General.Object.Tick=64}] run data modify storage asset:context this.MovePerStep set value 0.25

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
# 最初の浮遊時、または着地後は回転しない
    execute if entity @s[tag=2037.LeftRotate,tag=!2037.FirstLevitation,tag=!2037.OnGround] run tp @s ~ ~ ~ ~14.4 ~
    execute if entity @s[tag=!2037.LeftRotate,tag=!2037.FirstLevitation,tag=!2037.OnGround] run tp @s ~ ~ ~ ~-14.4 ~

# 継承
    execute if entity @s[tag=!2037.OnGround] at @s run function asset:object/super.tick
    #function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
