#> asset:artifact/0606.traffic_sign/attack_melee/4.1.schedule_tick
#
# Tick処理を行う
#
# @within function asset:artifact/0606.traffic_sign/attack_melee/4.schedule

# カウントを増やす
    scoreboard players add @s GU.Count 1

# 動き
    execute if score @s GU.Count matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0f,1.5f,0f]}}

# 音
    execute if score @s GU.Count matches 5 run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5 2
    execute if score @s GU.Count matches 5 run particle item anvil ~ ~0.5 ~ 2 2 2 0.1 60

# VFX
    function asset:artifact/0606.traffic_sign/attack_melee/4.2.vfx

# 使用者取得
    scoreboard players operation $GU.OwnerId Temporary = @s GU.OwnerID
    execute as @a if score @s UserID = $GU.OwnerId Temporary run tag @s add GU.Owner

# 12Tick毎に速度に応じてダメージ
    scoreboard players operation $GU.Temp Temporary = @s GU.Count
    scoreboard players operation $GU.Temp Temporary %= $12 Const
    execute if score $GU.Temp Temporary matches 0 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] at @s run function asset:artifact/0606.traffic_sign/attack_melee/5.damage

# 3.25 秒経過したらキル
    execute if score @s GU.Count matches 66 run kill @s

# リセット
    scoreboard players reset $GU.Temp Temporary
    scoreboard players reset $GU.OwnerId Temporary
    tag @p[tag=GU.Owner] remove GU.Owner
