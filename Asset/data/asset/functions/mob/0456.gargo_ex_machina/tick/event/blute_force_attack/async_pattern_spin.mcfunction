#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_spin
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.BluteForce 1

# 回転パターン
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^ ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^22 ^ ^22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^-22 ^ ^22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^22 ^ ^-22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^-22 ^ ^-22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m {IsMove:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/max/2_hard rotated ~ ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/max/2_hard rotated ~120 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/max/2_hard rotated ~240 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}
    execute if score @s CO.EventTimer.BluteForce matches 40 if predicate api:global_vars/difficulty/min/3_blessless rotated ~270 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"true",IsRotateInverse:"false"}

# 終了
    execute if score @s CO.EventTimer.BluteForce matches 41.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_end
