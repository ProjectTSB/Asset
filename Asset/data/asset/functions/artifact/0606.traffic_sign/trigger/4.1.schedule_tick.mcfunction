#> asset:artifact/0606.traffic_sign/trigger/4.1.schedule_tick
#
# Tick処理を行う
#
# @within function asset:artifact/0606.traffic_sign/trigger/4.schedule

# カウントを増やす
    scoreboard players add @s GU.Count 1

# 動き
    execute if score @s GU.Count matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0f,1.5f,0f]}}

# 音
    execute if score @s GU.Count matches 5 run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5 2
    execute if score @s GU.Count matches 5 run particle item anvil ~ ~0.5 ~ 2 2 2 0.1 60

# VFX
    particle electric_spark ^-0.0 ^0.10 ^4.0 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^0.78 ^0.10 ^3.923 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^1.531 ^0.10 ^3.696 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^2.222 ^0.10 ^3.326 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^2.828 ^0.10 ^2.828 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.326 ^0.10 ^2.222 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.696 ^0.10 ^1.531 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.923 ^0.10 ^0.78 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^4.0 ^0.10 ^0.0 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.923 ^0.10 ^-0.78 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.696 ^0.10 ^-1.531 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^3.326 ^0.10 ^-2.222 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^2.828 ^0.10 ^-2.828 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^2.222 ^0.10 ^-3.326 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^1.531 ^0.10 ^-3.696 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^0.78 ^0.10 ^-3.923 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-0.0 ^0.10 ^-4.0 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-0.78 ^0.10 ^-3.923 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-1.531 ^0.10 ^-3.696 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-2.222 ^0.10 ^-3.326 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-2.828 ^0.10 ^-2.828 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.326 ^0.10 ^-2.222 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.696 ^0.10 ^-1.531 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.923 ^0.10 ^-0.78 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-4.0 ^0.10 ^0.0 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.923 ^0.10 ^0.78 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.696 ^0.10 ^1.531 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-3.326 ^0.10 ^2.222 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-2.828 ^0.10 ^2.828 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-2.222 ^0.10 ^3.326 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-1.531 ^0.10 ^3.696 0.0 0.0 0.0 0 1 normal
    particle electric_spark ^-0.78 ^0.10 ^3.923 0.0 0.0 0.0 0 1 normal

# 使用者取得
    scoreboard players operation $GU.OwnerId Temporary = @s GU.OwnerID
    execute as @a if score @s UserID = $GU.OwnerId Temporary run tag @s add GU.Owner

# 10Tick毎に速度に応じてダメージ
    scoreboard players operation $GU.Temp Temporary = @s GU.Count
    scoreboard players operation $GU.Temp Temporary %= $10 Const
    execute if score $GU.Temp Temporary matches 0 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] at @s run function asset:artifact/0606.traffic_sign/trigger/5.damage

# 5秒経過したらキル
    execute if score @s GU.Count matches 101 run kill @s

# リセット
    scoreboard players reset $GU.Temp Temporary
    scoreboard players reset $GU.OwnerId Temporary
    tag @p[tag=GU.Owner] remove GU.Owner