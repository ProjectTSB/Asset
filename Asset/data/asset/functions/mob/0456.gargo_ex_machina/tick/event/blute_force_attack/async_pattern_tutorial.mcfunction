#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_tutorial
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.BluteForce 1

# 全員お披露目パターン
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^ ^ ^-8 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
    execute if score @s CO.EventTimer.BluteForce matches 2 positioned ^-15 ^ ^-12 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
    execute if score @s CO.EventTimer.BluteForce matches 3 positioned ^15 ^ ^-12 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
    execute if score @s CO.EventTimer.BluteForce matches 73 positioned ^ ^ ^-28 rotated ~ ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 74 positioned ^-23 ^ ^-28 rotated ~ ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 75 positioned ^23 ^ ^-28 rotated ~ ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 140 positioned ^-12 ^ ^-18 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"true"}
    execute if score @s CO.EventTimer.BluteForce matches 141 positioned ^12 ^ ^-18 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"true"}

# 終了
    execute if score @s CO.EventTimer.BluteForce matches 142.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_end
