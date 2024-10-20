#> asset:mob/0154.ruin/tick/5.death
#
# 奈落に行く際の演出
#
# @within function asset:mob/0154.ruin/tick/4.madness

# 演出
    playsound entity.warden.hurt hostile @a ~ ~ ~ 1 0.5 0
    playsound entity.warden.hurt hostile @a ~ ~ ~ 1 0.7 0
    particle dragon_breath ~ ~1.2 ~ 0.4 0.4 0.4 0.05 100
    particle explosion ~ ~1 ~ 0.2 0.1 0.2 0 4 normal @a

# ノーマル以下でkill、ハード以上なら奈落へGoodBye
    execute if predicate api:global_vars/difficulty/max/normal run kill @s
    execute if predicate api:global_vars/difficulty/min/hard run tp @s ~ -1000 ~
