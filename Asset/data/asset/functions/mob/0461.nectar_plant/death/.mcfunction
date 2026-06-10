#> asset:mob/0461.nectar_plant/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/461/death

# 演出
    playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.5
    playsound entity.warden.roar hostile @a ~ ~ ~ 0.7 1.7
    particle block big_dripleaf ~ ~1.2 ~ 0.4 0.4 0.4 0 30

# Killerを回復
    data modify storage api: Argument.Heal set from storage asset:context this.HealToKiller
    function api:heal/modifier
    execute as @p[tag=Killer,distance=..32] run function api:heal/
    function api:heal/reset
