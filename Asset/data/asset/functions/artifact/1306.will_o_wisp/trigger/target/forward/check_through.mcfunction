#> asset:artifact/1306.will_o_wisp/trigger/target/forward/check_through
#
#
#
# @within function
#   asset:artifact/1306.will_o_wisp/trigger/target/forward/
#   asset:artifact/1306.will_o_wisp/trigger/target/forward/check_through

# 成功済みならreturn
    execute if data storage asset:temp {Success:true} run return fail

# 自身が近くにいたらreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run return run function asset:artifact/1306.will_o_wisp/trigger/target/forward/success

# 壁を再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/1306.will_o_wisp/trigger/target/forward/check_through
