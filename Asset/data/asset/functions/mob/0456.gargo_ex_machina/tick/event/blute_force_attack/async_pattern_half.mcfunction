#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_half
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.BluteForce 1

# 1回目
    # ATTACK
        execute if score @s CO.EventTimer.BluteForce matches 1 positioned ^28 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 21 positioned ^20 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 41 positioned ^12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 61 positioned ^4 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 81 positioned ^-4 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 101 positioned ^-12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 121 positioned ^-20 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 141 positioned ^-28 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
    # YEETER
        execute if score @s CO.EventTimer.BluteForce matches 1 rotated ~-90 ~ positioned ^-25 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 1 rotated ~-90 ~ positioned ^-12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}

# 2回目
    # ATTACK
        execute if score @s CO.EventTimer.BluteForce matches 201 rotated ~90 ~ positioned ^28 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 221 rotated ~90 ~ positioned ^20 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 241 rotated ~90 ~ positioned ^12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 261 rotated ~90 ~ positioned ^4 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 281 rotated ~90 ~ positioned ^-4 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 301 rotated ~90 ~ positioned ^-12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 321 rotated ~90 ~ positioned ^-20 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 341 rotated ~90 ~ positioned ^-28 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m {IsTarget:"false"}
    # YEETER
        execute if score @s CO.EventTimer.BluteForce matches 201 rotated ~0 ~ positioned ^25 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}
        execute if score @s CO.EventTimer.BluteForce matches 201 rotated ~0 ~ positioned ^12 ^ ^28 rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m {IsRotate:"false",IsRotateInverse:"false"}

# 終了
    execute if score @s CO.EventTimer.BluteForce matches 400.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_end
