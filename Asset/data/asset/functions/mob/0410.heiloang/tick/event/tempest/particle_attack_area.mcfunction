#> asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
#
# テンペスト
#
# @within asset:mob/0410.heiloang/tick/event/tempest/

# 近くのテンペストオブジェクトを自分の位置に移動
    execute as @e[type=item_display,tag=2121.Main,tag=!BE.Temp.MoveEnd,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/event/tempest/move_attack_pos

# 終了
    # tag @s add BE.Temp.MoveEnd
    # tp @e[type=item_display,tag=2121.Main]

# # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAMwCMKAHAGzUCczAtAAwCGX7ALCgYc2zAEzMArGz4cARqTodKHAGbVZKMAQB2XALYJkgMMUABNS1gYXDPoDOScCgD2hbRCSjqBFHDdwMDmAAblzYhIbgAB5IHARQMQC+CQQ2pGiE9ogA7AS2ENbuiLFgcNjYaDC2htQcxRhO+RCGxWi2AKJlFVVtAI6EodhQAMpWPuSIKqFVSQC6QA_3
# # 円 1
# particle cloud ^0 ^ ^-7 0 0 0 0.05 1
# particle cloud ^2.06329 ^ ^-6.68901 0 0 0 0.05 1
# particle cloud ^3.94324 ^ ^-5.78367 0 0 0 0.05 1
# particle cloud ^5.47282 ^ ^-4.36443 0 0 0 0.05 1
# particle cloud ^6.51612 ^ ^-2.55739 0 0 0 0.05 1
# particle cloud ^6.98043 ^ ^-0.52311 0 0 0 0.05 1
# particle cloud ^6.8245 ^ ^1.55765 0 0 0 0.05 1
# particle cloud ^6.06218 ^ ^3.5 0 0 0 0.05 1
# particle cloud ^4.76121 ^ ^5.13136 0 0 0 0.05 1
# particle cloud ^3.03719 ^ ^6.30678 0 0 0 0.05 1
# particle cloud ^1.0433 ^ ^6.92182 0 0 0 0.05 1
# particle cloud ^-1.0433 ^ ^6.92182 0 0 0 0.05 1
# particle cloud ^-3.03719 ^ ^6.30678 0 0 0 0.05 1
# particle cloud ^-4.76121 ^ ^5.13136 0 0 0 0.05 1
# particle cloud ^-6.06218 ^ ^3.5 0 0 0 0.05 1
# particle cloud ^-6.8245 ^ ^1.55765 0 0 0 0.05 1
# particle cloud ^-6.98043 ^ ^-0.52311 0 0 0 0.05 1
# particle cloud ^-6.51612 ^ ^-2.55739 0 0 0 0.05 1
# particle cloud ^-5.47282 ^ ^-4.36443 0 0 0 0.05 1
# particle cloud ^-3.94324 ^ ^-5.78367 0 0 0 0.05 1
# particle cloud ^-2.06329 ^ ^-6.68901 0 0 0 0.05 1
