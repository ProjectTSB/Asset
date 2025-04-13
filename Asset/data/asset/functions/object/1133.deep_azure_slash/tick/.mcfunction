#> asset:object/1133.deep_azure_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1133/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if data storage asset:context this{Count:1} positioned ^ ^-0.3 ^ run function asset:object/1133.deep_azure_slash/tick/vfx/1/
    execute if data storage asset:context this{Count:2} run function asset:object/1133.deep_azure_slash/tick/vfx/2/
    execute if data storage asset:context this{Count:3} run function asset:object/1133.deep_azure_slash/tick/vfx/3/
    execute if data storage asset:context this{Count:4} positioned ^0.4 ^-0.1 ^ run function asset:object/1133.deep_azure_slash/tick/vfx/4/
    execute if data storage asset:context this{Count:5} run function asset:object/1133.deep_azure_slash/tick/vfx/5/

# 消滅処理
    kill @s[scores={General.Object.Tick=3..}]
