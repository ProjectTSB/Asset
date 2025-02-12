#> asset:object/1002.malleus_maleficarum/tick/witchification
#
# 魔女化
#
# @within function asset:object/1002.malleus_maleficarum/tick/hit

# 効果音
    playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1

# particle
    particle landing_obsidian_tear ~ ~0.1 ~ 0.5 0 0.5 0 200 force

# 魔女化
    summon witch ~ ~ ~ {Fire:1200s}
    execute if score @s MobID matches -2147483648..2147483647 run function api:mob/remove
    execute unless score @s MobID matches -2147483648..2147483647 run data modify entity @s DeathTime set value 19f
    execute unless score @s MobID matches -2147483648..2147483647 run kill @s
