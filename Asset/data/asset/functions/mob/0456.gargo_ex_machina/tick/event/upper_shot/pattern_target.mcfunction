#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_target
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_target

# 召喚
    execute at @a[distance=..80] run summon area_effect_cloud ^ ^ ^ {Tags:["CO.Aec.UpperShotPosition"],Duration:300}
    execute as @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80] at @s run function asset:mob/0456.gargo_ex_machina/tick/util/move_to_ground
    execute as @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80] at @s run tp @s ~ ~0.3 ~
