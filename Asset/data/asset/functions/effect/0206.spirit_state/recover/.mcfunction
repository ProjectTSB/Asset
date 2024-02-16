#> asset:effect/0206.spirit_state/recover/
# @within function
#   asset:effect/0206.spirit_state/end/
#   asset:effect/0206.spirit_state/remove/

# おかえり現世
    execute if data storage asset:context this{PrevMode:0} run gamemode survival @s
    execute if data storage asset:context this{PrevMode:1} run gamemode creative @s
    execute if data storage asset:context this{PrevMode:2} run gamemode adventure @s

# 帰りは怖い
    function asset:effect/0206.spirit_state/recover/check
# 帰れそうなら帰る
    execute if score $5Q.Failed Temporary matches 0 run function asset:effect/0206.spirit_state/recover/teleport
# 帰れなさそうなら死ぬ
    execute if score $5Q.Failed Temporary matches 1 run function asset:effect/0206.spirit_state/recover/damage

# リセット
    scoreboard players reset $5Q.Failed Temporary
