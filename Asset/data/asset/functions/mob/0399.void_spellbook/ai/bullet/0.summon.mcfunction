#> asset:mob/0399.void_spellbook/ai/bullet/0.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0399.void_spellbook/ai/bullet/4.fire

# UUIDスコア移し
    scoreboard players operation $B3.Temp B3.UUID = @s MobUUID

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["B3.Temp","B3.Bullet","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"leather_horse_armor",Count:1b,tag:{display:{color:3604544},CustomModelData:20370}},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:2}]}

# 初期化処理
    tp @e[type=item_display,tag=B3.Temp,distance=..2] ^ ^ ^ ~ ~
    execute as @e[type=item_display,tag=B3.Temp,distance=..2] at @s run function asset:mob/0399.void_spellbook/ai/bullet/1.init

# リセット
    scoreboard players reset $B3.Temp B3.UUID
