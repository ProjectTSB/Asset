#> asset:effect/0206.spirit_state/recover/
# @within function
#   asset:effect/0206.spirit_state/end/
#   asset:effect/0206.spirit_state/remove/

# おかえり現世
    execute if data storage asset:context this{PrevMode:0} run gamemode survival @s
    execute if data storage asset:context this{PrevMode:1} run gamemode creative @s
    execute if data storage asset:context this{PrevMode:2} run gamemode adventure @s

# 帰りは怖…くなくなった
    function asset:effect/0206.spirit_state/recover/teleport.m with storage asset:context this
