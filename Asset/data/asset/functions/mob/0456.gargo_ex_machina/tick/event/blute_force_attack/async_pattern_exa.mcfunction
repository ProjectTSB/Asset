#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_exa
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.BluteForce 1

# 回転パターン
    # Attack
        execute if score @s CO.EventTimer.BluteForce matches 1 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ ~ rotated ~135 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
        execute if score @s CO.EventTimer.BluteForce matches 81 if predicate api:global_vars/difficulty/min/3_blessless rotated ~90 ~ rotated ~135 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
        execute if score @s CO.EventTimer.BluteForce matches 161 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 ~ rotated ~135 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
        execute if score @s CO.EventTimer.BluteForce matches 241 if predicate api:global_vars/difficulty/min/3_blessless rotated ~270 ~ rotated ~135 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"true"}
    # Yeeter
        execute if score @s CO.EventTimer.BluteForce matches 1 rotated ~ ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 41 rotated ~45 ~ positioned ^ ^ ^32 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 81 rotated ~90 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 121 rotated ~135 ~ positioned ^ ^ ^32 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 161 rotated ~180 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 201 rotated ~225 ~ positioned ^ ^ ^32 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 241 rotated ~270 ~ positioned ^ ^ ^29 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 281 rotated ~315 ~ positioned ^ ^ ^32 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}

# 終了  
    execute if score @s CO.EventTimer.BluteForce matches 282.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_end
