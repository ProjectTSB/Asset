#> asset:mob/0186.ferocious_bee/tick/move
#
#
#
# @within function
#   asset:mob/0186.ferocious_bee/tick/
#   asset:mob/0186.ferocious_bee/tick/turning

# 移動
    function asset:mob/call.m {method:"get_speed"}
    execute at @s run function asset:mob/call.m {method:"move"}
