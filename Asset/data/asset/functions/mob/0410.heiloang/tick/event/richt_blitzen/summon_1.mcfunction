#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_1
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_a
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_b
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 演出
    execute positioned ^12 ^2 ^25 run function asset:mob/0410.heiloang/tick/event/richt_blitzen/attack
    execute positioned ^ ^2 ^25 run function asset:mob/0410.heiloang/tick/event/richt_blitzen/attack
    execute positioned ^-12 ^2 ^25 run function asset:mob/0410.heiloang/tick/event/richt_blitzen/attack
