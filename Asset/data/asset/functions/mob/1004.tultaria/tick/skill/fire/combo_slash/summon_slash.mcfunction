#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
#
# 斬撃エフェクトを出す
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^-1 ^ positioned ^ ^ ^2 run function api:object/summon

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5
