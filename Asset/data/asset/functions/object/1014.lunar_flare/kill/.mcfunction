#> asset:object/1014.lunar_flare/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1014/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle minecraft:dust 0 0.8 0.8 1 ~ ~-0.5 ~ 1.0 1.0 1.0 0 10 force @a[distance=..30]
    particle minecraft:dust 0 0.8 0.6 0.8 ~ ~-0.5 ~ 1.0 1.0 1.0 0 10 force @a[distance=..30]
    particle glow ~ ~-0.5 ~ 0.8 0.8 0.8 0 5 force @a[distance=..30]
    particle explosion ~ ~-0.5 ~ 0.5 0.2 0.5 0 1 force @a[distance=..30]
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.glow_squid.ambient neutral @a ~ ~ ~ 2 1.5

# ダメージ
# 着弾地点周辺に敵がいる場合、その敵を中心として範囲攻撃する
    execute store result storage api: Argument.Damage float 1 run function asset:object/1014.lunar_flare/kill/get_damage.m with storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] positioned ~-2 ~-2 ~-2 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=3,dy=3,dz=3] run function api:damage/
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0] at @s positioned ~-2 ~-2 ~-2 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=3,dy=3,dz=3] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    kill @s
