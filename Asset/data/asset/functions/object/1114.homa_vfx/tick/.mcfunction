#> asset:object/1114.homa_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1114/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if data storage asset:context this{Count:1} positioned ^ ^-0.2 ^ run function asset:object/1114.homa_vfx/tick/1/
    execute if data storage asset:context this{Count:2} positioned ^ ^ ^0.3 run function asset:object/1114.homa_vfx/tick/2/
    execute if data storage asset:context this{Count:3} positioned ^ ^0.45 ^ run function asset:object/1114.homa_vfx/tick/3/
    execute if data storage asset:context this{Count:4} positioned ^ ^ ^ run function asset:object/1114.homa_vfx/tick/4/
    execute if data storage asset:context this{Count:5} positioned ^ ^0.2 ^ run function asset:object/1114.homa_vfx/tick/5/
    execute if data storage asset:context this{Count:6} positioned ^ ^0.4 ^ run function asset:object/1114.homa_vfx/tick/6/

# 消滅処理
    kill @s[scores={General.Object.Tick=6..}]
