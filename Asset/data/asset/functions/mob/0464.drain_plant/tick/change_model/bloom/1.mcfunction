#> asset:mob/0464.drain_plant/tick/change_model/bloom/1
#
#
#
# @within function asset:mob/0464.drain_plant/tick/attack/

    playsound minecraft:entity.glow_squid.hurt hostile @a ~ ~ ~ 1 0.7
    particle block moss_block ~ ~1 ~ 1.3 0.5 1.3 0 60 normal @a
    function asset:mob/0464.drain_plant/tick/change_model/2
