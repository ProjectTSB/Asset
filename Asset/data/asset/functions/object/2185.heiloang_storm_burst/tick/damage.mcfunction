#> asset:object/2185.heiloang_storm_burst/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2185.heiloang_storm_burst/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6.5] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 0.5
    particle explosion ~ ~1 ~ 3 1 3 0.1 10 force

# 竜巻演出開始
    scoreboard players set @s General.Object.Tick 200
    data merge entity @s {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,1.0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
    summon item_display ~ ~ ~ {Tags:["2185.Append","BE.Object"],teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[0f,-2f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
    ride @e[type=item_display,tag=2185.Append,tag=!2185.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2185.Ride
