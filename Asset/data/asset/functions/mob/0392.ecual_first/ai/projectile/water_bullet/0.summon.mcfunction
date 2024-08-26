#> asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon
#
# 弾幕召喚
#
# @within function asset:mob/0392.ecual_first/**

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["AW.ProjectileInit","AW.WaterBullet","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"leather_horse_armor",Count:1b,tag:{display:{color:65514},CustomModelData:20370}},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:2}]}

# 初期化処理
    tp @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] ^ ^ ^ ~ ~
    execute as @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] at @s run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/1.init
