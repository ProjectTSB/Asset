#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/summon
#
# 演出と一緒にモブを召喚
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/summon_illusion/

# 召喚
    data modify storage api: Argument.ID set value 1005
    function api:mob/summon

# パーティクル
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:dust 1 1 1 2 ~ ~1 ~ 0.3 0.7 0.3 0 25

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 1 2
