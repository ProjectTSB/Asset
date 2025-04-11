#> asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_servants
#
# コール：ドラゴンサーヴァント
#
# @within asset:mob/0410.heiloang/tick/event/call_dragon_servants/

# 演出
    execute positioned ^12 ^-0.5 ^12.5 run particle flash ~ ~5 ~ 2 5 2 0 20
    execute positioned ^-12 ^-0.5 ^12.5 run particle flash ~ ~5 ~ 1 5 1 0 20

# 眷属召喚
    data modify storage api: Argument.ID set value 411
    execute positioned ^12 ^-1 ^12.5 rotated ~180 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 412
    execute positioned ^-12 ^-1 ^12.5 rotated ~180 ~ run function api:mob/summon
