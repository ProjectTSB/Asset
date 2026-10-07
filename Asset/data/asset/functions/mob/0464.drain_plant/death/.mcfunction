#> asset:mob/0464.drain_plant/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/464/death

# 演出
    playsound entity.squid.death hostile @a ~ ~ ~ 1 1.2
    particle block netherrack ~ ~0.4 ~ 0.6 0.2 0.6 0 30 normal @a
    particle minecraft:crimson_spore ~ ~0.6 ~ 1 1 1 0 50 normal @a

# KillerのMPを回復する
    data modify storage api: Argument.Fluctuation set from storage asset:context this.MPHealToKiller
    execute as @p[tag=Killer,distance=..32] run function api:mp/fluctuation
