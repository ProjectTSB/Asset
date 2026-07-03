#> asset:object/1002.malleus_maleficarum/hit/witchification
#
# 魔女化
#
# @within function asset:object/1002.malleus_maleficarum/hit/

# 効果音
    playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1

# particle
    particle landing_obsidian_tear ~ ~0.1 ~ 0.5 0 0.5 0 200 force

# 魔女化
    summon witch ~ ~ ~ {Fire:1200s}
    function api:mob/remove
