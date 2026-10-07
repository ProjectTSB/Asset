#> asset:object/1153.flare_butterfly/tick/attack/attack
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/attack/

# 演出
    playsound entity.blaze.shoot neutral @a ~ ~ ~ 0.6 1.5
    playsound entity.blaze.shoot neutral @a ~ ~ ~ 0.6 1.6
    playsound block.fire.ambient neutral @a ~ ~ ~ 0.8 1
    playsound block.lava.extinguish neutral @a ~ ~ ~ 0.8 1.2
    execute rotated ~90 25 run function asset:object/1153.flare_butterfly/tick/attack/vfx
    execute rotated ~90 -25 run function asset:object/1153.flare_butterfly/tick/attack/vfx

# 自身の体力割合を取得
    execute as @p[tag=1153.Owner] run function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# ダメージ
    function api:damage/single_damage_session/open
    execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=4,dy=4,dz=4] run function asset:object/1153.flare_butterfly/tick/attack/damage/
    function api:damage/single_damage_session/close

# リセット
    scoreboard players reset $HealthPer Temporary

# 攻撃を終了してクールダウンを開始する
    data modify storage asset:context this.AttackCD._ set from storage asset:context this.AttackCD.Max
    data modify storage asset:context this.IsAttackMode set value false
