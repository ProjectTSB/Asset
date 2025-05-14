#> asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/
#
# 反射サンダー召喚の位置調整
#
# @within function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/

# -15,0,15度の位置に召喚
    execute rotated ~-15 0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
    execute rotated ~ 0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
    execute rotated ~15 0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~-30 0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~30 0 run function asset:mob/0393.labyria_first/ai/animation/8_0_sw_raigou/summon/summon
