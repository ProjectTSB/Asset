#> asset:mob/0401.darkness_spellbook/ai/bullet/0.summon
#
# 弾幕 召喚
#
# @within function asset:mob/0401.darkness_spellbook/tick/

# UUIDスコア移し
    scoreboard players operation $B5.Temp B5.UUID = @s MobUUID

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["B5.Temp","B5.Bullet","AllowProcessingCommonTag","AutoKillWhenDiePassenger"],billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"leather_horse_armor",Count:1b,tag:{display:{color:848},CustomModelData:20370}},Passengers:[{id:"area_effect_cloud",Particle:"block air",Radius:0f,Duration:2}]}

# 初期化処理
    execute positioned ~ ~1.5 ~ facing entity @p[tag=!PlayerShouldInvulnerable,distance=..100] eyes run tp @e[type=item_display,tag=B5.Temp,distance=..2] ^ ^ ^ ~ ~
    execute as @e[type=item_display,tag=B5.Temp,distance=..2] at @s run function asset:mob/0401.darkness_spellbook/ai/bullet/1.init

# リセット
    scoreboard players reset $B5.Temp B5.UUID

# 時間リセット
    execute store result score @s B5.Tick run random value 0..40
