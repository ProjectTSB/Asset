#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/banish_minion
#
# 雑魚を退散させる
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/


# 演出
    particle minecraft:large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.05 50 force @a[distance=..64]

# ミニオンが消える
    tp @s ~ -64 ~
    function api:mob/kill
