#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line_double.m
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack_double

# パーティクル
    $execute rotated ~30 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
    $execute rotated ~90 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
    $execute rotated ~-30 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
    $execute rotated ~-90 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
    $execute rotated ~150 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
    $execute rotated ~-150 ~ positioned ^ ^ ^$(Dist) run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line
