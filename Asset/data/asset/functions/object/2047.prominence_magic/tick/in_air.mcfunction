#> asset:object/2047.prominence_magic/tick/in_air
#
# 空中にいるときの処理
#
# @within function asset:object/2047.prominence_magic/tick/

# 演出
    particle dust_color_transition 0.922 0.318 0.133 1.2 0.51 0.067 0.051 ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
    particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
    execute rotated ~ ~2 run particle dust_color_transition 0.922 0.318 0.133 1.2 0.51 0.067 0.051 ^ ^ ^0.5 0.1 0.1 0.1 0 1 normal @a
    execute rotated ~ ~2 run particle flame ^ ^ ^0.5 0.05 0.05 0.05 0 1
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.1 1.5 0

# 地面に着弾するまで下を向く
    tp @s ^ ^ ^ ~ ~2
