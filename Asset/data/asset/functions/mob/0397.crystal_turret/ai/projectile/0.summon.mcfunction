#> asset:mob/0397.crystal_turret/ai/projectile/0.summon
#
# 弾幕召喚
#
# @within function asset:mob/0397.crystal_turret/ai/projectile/4.fire

# UUIDスコア移し
    scoreboard players operation $B1.Temp B1.UUID = @s MobUUID

# 元となるMobを召喚する
    summon item_display ~ ~ ~ {Tags:["B1.Temp","B1.Bullet"],billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"leather_horse_armor",Count:1b,tag:{display:{color:65514},CustomModelData:20370}}}

# 初期化処理
    tp @e[type=item_display,tag=B1.Temp,distance=..0.01] ^ ^ ^ ~ ~
    execute as @e[type=item_display,tag=B1.Temp,distance=..0.01] at @s run function asset:mob/0397.crystal_turret/ai/projectile/1.init

# リセット
    scoreboard players reset $B1.Temp B1.UUID
