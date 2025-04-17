#> asset:object/1127.dawn_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1127/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 斬撃演出
    execute if data storage asset:context this{Count:1} if score @s General.Object.Tick matches 1 run function asset:object/1127.dawn_slash/tick/1/1
    execute if data storage asset:context this{Count:1} if score @s General.Object.Tick matches 2 run function asset:object/1127.dawn_slash/tick/1/2
    execute if data storage asset:context this{Count:1} if score @s General.Object.Tick matches 3 run function asset:object/1127.dawn_slash/tick/1/3

    execute if data storage asset:context this{Count:2} if score @s General.Object.Tick matches 1 run function asset:object/1127.dawn_slash/tick/2/1
    execute if data storage asset:context this{Count:2} if score @s General.Object.Tick matches 2 run function asset:object/1127.dawn_slash/tick/2/2
    execute if data storage asset:context this{Count:2} if score @s General.Object.Tick matches 3 run function asset:object/1127.dawn_slash/tick/2/3

    execute if data storage asset:context this{Count:3} if score @s General.Object.Tick matches 1 run function asset:object/1127.dawn_slash/tick/3/1
    execute if data storage asset:context this{Count:3} if score @s General.Object.Tick matches 2 run function asset:object/1127.dawn_slash/tick/3/2
    execute if data storage asset:context this{Count:3} if score @s General.Object.Tick matches 3 run function asset:object/1127.dawn_slash/tick/3/3

# 消滅処理
    kill @s[scores={General.Object.Tick=3..}]
