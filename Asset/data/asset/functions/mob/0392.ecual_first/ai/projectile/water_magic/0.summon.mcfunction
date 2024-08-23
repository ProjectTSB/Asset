#> asset:mob/0392.ecual_first/ai/projectile/water_magic/0.summon
#
# 設置水魔法 召喚
#
# @within function asset:mob/0392.ecual_first/**

# 本体召喚
    summon item_display ~ ~ ~ {Tags:["AW.WaterMagic","AW.ProjectileInit"],interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20364}},Passengers:[{id:"item_display",Tags:["AW.WaterMagicDisplay","AW.ProjectileInit"],interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20365}},Passengers:[{id:"item_display",Tags:["AW.WaterMagicDisplay","AW.ProjectileInit"],interpolation_duration:1,teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0.01f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:33023},CustomModelData:20366}}}]}]}

# Init処理
    execute as @e[type=item_display,tag=AW.WaterMagic,tag=AW.ProjectileInit,distance=..0.01] run function asset:mob/0392.ecual_first/ai/projectile/water_magic/1.init

# リセット
    scoreboard players reset $AW.Temp Temporary
