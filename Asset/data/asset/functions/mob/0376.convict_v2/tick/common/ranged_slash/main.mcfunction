#> asset:mob/0376.convict_v2/tick/common/ranged_slash/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**/**

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.return hostile @a ^ ^ ^3 1 0
    playsound minecraft:item.trident.return hostile @a ^ ^ ^9 1 0

# 斬撃飛ばす
    execute positioned ^ ^ ^1 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
    execute positioned ^ ^ ^1 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1

    execute positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
    execute positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1

    execute positioned ^ ^ ^5 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
    execute positioned ^ ^ ^5 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1

    execute positioned ^ ^ ^7 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
    execute positioned ^ ^ ^7 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1

    execute positioned ^ ^ ^9 run function asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
    execute positioned ^ ^ ^9 run function asset:mob/0376.convict_v2/tick/common/particle/particle_1
