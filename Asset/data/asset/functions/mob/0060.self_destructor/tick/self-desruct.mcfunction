#> asset:mob/0060.self_destructor/tick/self-desruct
#
#
#
# @within function asset:mob/0060.self_destructor/tick/

# 演出
    particle explosion ~ ~ ~ 5 5 5 1 140 normal @a
    particle flame ~ ~ ~ 0 0 0 0.3 140 normal @a
    playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 2 1.2 0
    playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 2 0.6 0

# ダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..7.5] run function asset:mob/0060.self_destructor/tick/damage_distance

# 連鎖爆発
    scoreboard players set @e[type=zombie,scores={MobID=60},distance=..7.5] 1O.ExplodeFuse 36

# 消滅
# 一度でも戦闘したかどうかでremoveかkillか変える
    execute unless data storage asset:context this{Fought:true} run function api:mob/remove
    execute if data storage asset:context this{Fought:true} run function api:mob/kill
